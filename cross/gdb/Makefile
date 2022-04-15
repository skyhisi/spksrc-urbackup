PKG_NAME = gdb
PKG_VERS = 11.2
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://ftp.gnu.org/gnu/gdb
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/gmp     #cross/termcap

HOMEPAGE = https://www.gnu.org/software/gdb/
COMMENT  = The GNU Project Debugger
LICENSE  = GPLv2/LGPLv2

GNU_CONFIGURE = 1

include ../../mk/spksrc.cross-cc.mk
