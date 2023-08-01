# extern uint64 copy_and_swap(uint64 &lock, uint64 expected, uint64 desired);
# a0 holds address of memory location
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    bne t0, a1, fail       # Doesn’t match, so fail.
    sc.w t0, a2, (a0)      # Try to update.
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    li a0, 0               # Set return to success.
    jr ra                  # Return.
    fail:
    li a0, 1               # Set return to failure.
    jr ra                  # Return.