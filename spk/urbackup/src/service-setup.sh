
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
    sed -i 's/package/root/g' /var/packages/urbackup/conf/privilege
}

service_prestart ()
{
    CONFIG_DIR="${SYNOPKG_PKGVAR}"
}
