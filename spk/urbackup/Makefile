SPK_NAME = urbackup
SPK_VERS = 2.5.30
SPK_REV = 1
SPK_ICON = src/urbackup.png
DSM_UI_DIR = app

DEPENDS = cross/urbackup-server

# see cross/cryptopp
UNSUPPORTED_ARCHS = $(PPC_ARCHS)

MAINTAINER = josef109
DESCRIPTION = UrBackup is an easy to setup Open Source client/server backup system, that through a combination of image and file backups accomplishes both data safety and a fast restoration time.
RELOAD_UI = yes
DISPLAY_NAME = UrBackup
CHANGELOG = "Initial package release with server and client"

HOMEPAGE = https://www.urbackup.org/
LICENSE  = AGPL-3.0


# 'auto' reserved value grabs SPK_NAME 
SERVICE_USER         = auto
GROUP=sc-backup

SERVICE_SETUP        = src/service-setup.sh
STARTABLE            = yes

SERVICE_PORT = 55414
ADMIN_PORT = $(SERVICE_PORT)
SERVICE_PORT_TITLE =  Urbackup (HTTP)


SPK_COMMANDS = bin/blockalign bin/urbackupclientctl sbin/urbackupclientbackend

include ../../mk/spksrc.spk.mk
