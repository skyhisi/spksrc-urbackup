
# https://help.synology.com/developer-guide/integrate_dsm/fhs.html
if [ -z "${SYNOPKG_PKGHOME}" ]; then
    SYNOPKG_PKGHOME="${SYNOPKG_PKGVAR}"
fi 

HOME_DIR="${SYNOPKG_PKGVAR}"

SERVICE_COMMAND="${SYNOPKG_PKGDEST}/bin/urbackupsrv run -d -v error -u sc-urbackup --pidfile ${PID_FILE} --logfile ${LOG_FILE}"

SVC_BACKGROUND=y
SVC_WRITE_PID=y

service_postinst ()
{
   	mkdir -p ${SYNOPKG_PKGVAR}/urbackup
    echo "${SYNOPKG_PKGHOME}" > ${SYNOPKG_PKGVAR}/urbackup/backupfolder
    mkdir -p -m 0755 /etc/urbackup
    echo "${SYNOPKG_PKGHOME}" > /etc/urbackup/backupfolder
    sed -i 's/package/root/g' /var/packages/urbackup/conf/privilege
    chown root "${SYNOPKG_PKGDEST}/bin/urbackup_snapshot_helper"
    chown root "${SYNOPKG_PKGDEST}/bin/urbackup_mount_helper"
    chmod +s "${SYNOPKG_PKGDEST}/bin/urbackup_snapshot_helper"
    chmod +s "${SYNOPKG_PKGDEST}/bin/urbackup_mount_helper"
}

service_prestart ()
{
    CONFIG_DIR="${SYNOPKG_PKGVAR}"
}
