TC_ARCH = comcerto2k
TC_VERS = 7.0
TC_KERNEL = 3.2.101
TC_GLIBC = 2.20


TC_DIST = comcerto2k-gcc493_glibc220_hard-GPL
TC_DIST_SITE_PATH = Mindspeed%20Comcerto%202000%20Linux%203.2.101

TC_TARGET = arm-unknown-linux-gnueabi
TC_SYSROOT = $(TC_TARGET)/sysroot
TC_EXTRA_CFLAGS = -march=armv7-a -mcpu=cortex-a9 -mfpu=neon -mfloat-abi=hard -mtune=cortex-a9 -mthumb

include ../../mk/spksrc.tc.mk


