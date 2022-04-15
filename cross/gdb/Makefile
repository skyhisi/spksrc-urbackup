PKG_NAME = gdb
PKG_VERS = 11.2
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_NAME)-$(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://ftp.gnu.org/gnu/gdb
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/gmp     #cross/termcap

include ../../mk/spksrc.main-depends.mk

ifeq ($(call version_lt, $(TC_GCC), 4.8.1),1)
DEPENDS += cross/gdb-7.12
else
# A compiler with support for C++11 language features is required.
DEPENDS += cross/gdb-latest
endif
