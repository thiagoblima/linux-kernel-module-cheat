/* https://github.com/cirosantilli/linux-kernel-module-cheat#arm-bfi-instruction */

#include "common.h"

ENTRY
    ldr x0, =0x1122334455667788

    ldr x1, =0xFFFFFFFFFFFFFFFF
    bfi x1, x0, 16, 32
    ASSERT_EQ(x1, 0xFFFF55667788FFFF)
EXIT
