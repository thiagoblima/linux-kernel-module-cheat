/* https://github.com/cirosantilli/linux-kernel-module-cheat#arm-adr-instruction */

#include "common.h"

ENTRY
    adrp x0, label
    adr x1, label
label:
    /* Clear the lower 12 bits. */
    bic x1, x1, 0xFF
    bic x1, x1, 0xF00
    ASSERT_EQ_REG(x0, x1)
EXIT
