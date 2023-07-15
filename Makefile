DIR_BUILD = build
DIR_LIBS  = lib
DIR_INC   = h

DEBUG_FLAG = -D DEBUG_PRINT=0

KERNEL_IMG = kernel
KERNEL_ASM = kernel.asm

LIBS = \
  ${DIR_LIBS}/hw.lib \
  ${DIR_LIBS}/mem.lib \
  ${DIR_LIBS}/console.lib

# riscv64-unknown-elf- or riscv64-linux-gnu-
# perhaps in /opt/riscv/bin
#TOOLPREFIX =

# Try to infer the correct TOOLPREFIX if not set
ifndef TOOLPREFIX
TOOLPREFIX := $(shell if riscv64-unknown-elf-objdump -i 2>&1 | grep 'elf64-big' >/dev/null 2>&1; \
	then echo 'riscv64-unknown-elf-'; \
	elif riscv64-linux-gnu-objdump -i 2>&1 | grep 'elf64-big' >/dev/null 2>&1; \
	then echo 'riscv64-linux-gnu-'; \
	elif riscv64-unknown-linux-gnu-objdump -i 2>&1 | grep 'elf64-big' >/dev/null 2>&1; \
	then echo 'riscv64-unknown-linux-gnu-'; \
	else echo "***" 1>&2; \
	echo "*** Error: Couldn't find a riscv64 version of GCC/binutils." 1>&2; \
	echo "*** To turn off this error, run 'gmake TOOLPREFIX= ...'." 1>&2; \
	echo "***" 1>&2; exit 1; fi)
endif

QEMU = qemu-system-riscv64

AS      = ${TOOLPREFIX}as
CC      = ${TOOLPREFIX}gcc
CXX     = ${TOOLPREFIX}g++
LD      = ${TOOLPREFIX}ld
OBJCOPY = ${TOOLPREFIX}objcopy
OBJDUMP = ${TOOLPREFIX}objdump

ASFLAGS = -ggdb -march=rv64ima -mabi=lp64

CFLAGS  = -Wall -Werror -Og -ggdb
CFLAGS += -nostdlib
CFLAGS += -march=rv64ima -mabi=lp64 -mcmodel=medany -mno-relax
CFLAGS += -fno-omit-frame-pointer -ffreestanding -fno-common
CFLAGS += $(shell ${CC} -fno-stack-protector -E -x c /dev/null >/dev/null 2>&1 && echo -fno-stack-protector)
CFLAGS += ${DEBUG_FLAG}
#CFLAGS += -I./${DIR_LIBS} -I./${DIR_INC}
CFLAGS += -MMD -MP -MF"${@:%.o=%.d}"

# Disable PIE when possible (for Ubuntu 16.10 toolchain)
ifneq ($(shell ${CC} -dumpspecs 2>/dev/null | grep -e '[^f]no-pie'),)
CFLAGS += -fno-pie -no-pie
endif
ifneq ($(shell ${CC} -dumpspecs 2>/dev/null | grep -e '[^f]nopie'),)
CFLAGS += -fno-pie -nopie
endif

CXXFLAGS  = -Wall -Werror -Og -ggdb
CXXFLAGS += -nostdlib -std=c++11
CXXFLAGS += -march=rv64ima -mabi=lp64 -mcmodel=medany -mno-relax
CXXFLAGS += -fno-omit-frame-pointer -ffreestanding -fno-common
#CXXFLAGS += -I./${DIR_LIBS} -I./${DIR_INC}
CXXFLAGS += $(shell ${CXX} -fno-stack-protector -E -x c /dev/null >/dev/null 2>&1 && echo -fno-stack-protector)
CXXFLAGS += ${DEBUG_FLAG}
CXXFLAGS += -MMD -MP -MF"${@:%.o=%.d}"

LDSCRIPT = kernel.ld
LDFLAGS  = -z max-page-size=4096 --script ${LDSCRIPT}
LDLIBS   = --library-path . $(patsubst %,--library=:%,${LIBS})

OBJECTS =

SOURCES_ASM = $(shell find . -name "*.S" -printf "%P ")
OBJECTS += $(addprefix ${DIR_BUILD}/,${SOURCES_ASM:.S=.o})
vpath %.S $(sort $(dir ${SOURCES_ASM}))

SOURCES = $(shell find . -name "*.c" -printf "%P ")
OBJECTS += $(addprefix ${DIR_BUILD}/,${SOURCES:.c=.o})
vpath %.c $(sort $(dir ${SOURCES}))

SOURCES_CPP = $(shell find . -name "*.cpp" -printf "%P ")
OBJECTS += $(addprefix ${DIR_BUILD}/,${SOURCES_CPP:.cpp=.o})
vpath %.cpp $(sort $(dir ${SOURCES_CPP}))

all: ${KERNEL_IMG}

${KERNEL_IMG}: ${LIBS} ${OBJECTS} ${LDSCRIPT} | ${DIR_BUILD}
	${LD} ${LDFLAGS} -o ${@} ${OBJECTS} ${LDLIBS} ${LDLIBS}
	${OBJDUMP} --source ${KERNEL_IMG} > ${KERNEL_ASM}

${DIR_BUILD}/%.o: %.cpp Makefile | ${DIR_BUILD}
	@mkdir -p $(dir ${@})
	${CXX} -c ${CXXFLAGS} -Wa,-a,-ad,-alms=${DIR_BUILD}/${<:.cpp=.lst} -o ${@} ${<}

${DIR_BUILD}/%.o: %.c Makefile | ${DIR_BUILD}
	@mkdir -p $(dir ${@})
	${CC} -c ${CFLAGS} -Wa,-a,-ad,-alms=${DIR_BUILD}/${<:.c=.lst} -o ${@} ${<}

${DIR_BUILD}/%.o: %.s Makefile | ${DIR_BUILD}
	@mkdir -p $(dir ${@})
	${AS} -c ${ASFLAGS} -o ${@} ${<}

${DIR_BUILD}:
	mkdir ${@}

clean:
	rm -f *.tex *.dvi *.idx *.aux *.log *.ind *.ilg
	rm -f ${KERNEL_IMG} ${KERNEL_ASM}
	rm -fr ${DIR_BUILD}
	rm -f .gdbinit

# try to generate a unique GDB port
GDBPORT = $(shell expr `id -u` % 5000 + 25000)

QEMUGDB = $(shell if ${QEMU} -help | grep -q '^-gdb'; \
	then echo "-gdb tcp::${GDBPORT}"; \
	else echo "-s -p ${GDBPORT}"; fi)

CPU_CORE_COUNT = 1
QEMUOPTS = -machine virt -bios none -kernel ${KERNEL_IMG} -m 128M -smp ${CPU_CORE_COUNT} -nographic

qemu: ${KERNEL_IMG}
	${QEMU} ${QEMUOPTS}

.gdbinit: .gdbinit.tmpl-riscv
	sed "s/:1234/:${GDBPORT}/" < ${^} > ${@}

qemu-gdb: ${KERNEL_IMG} .gdbinit
	@echo "*** Now run 'gdb-multiarch' in another window with target remote args 'localhost:${GDBPORT}'." 1>&2
	${QEMU} ${QEMUOPTS} -S ${QEMUGDB}

# Prevent deletion of intermediate files, e.g. cat.o, after first build, so
# that disk image changes after first build are persistent until clean.
# http://www.gnu.org/software/make/manual/html_node/Chained-Rules.html
.PRECIOUS: %.o

-include $(wildcard ${DIR_BUILD}/*.d)
