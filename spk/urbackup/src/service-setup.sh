
# https://help.synology.com/developer-guide/integrate_dsm/fhs.html
if [ -z "${SYNOPKG_PKGHOME}" ]; then
    SYNOPKG_PKGHOME="${SYNOPKG_PKGVAR}"
fi

#export HOME="${SYNOPKG_PKGHOME}"
HOME_DIR="${SYNOPKG_PKGVAR}"

SERVICE_COMMAND="${SYNOPKG_PKGDEST}/bin/urbackupsrv run -d -v error -u sc-urbackup --pidfile ${PID_FILE} --logfile ${LOG_FILE}"

SVC_BACKGROUND=y
SVC_WRITE_PID=y
#GROUP="root"

service_postinst ()
{
   	mkdir -p ${SYNOPKG_PKGVAR}/urbackup
    #ln -s ${SYNOPKG_PKGDEST} /etc/urbackup
    #echo "tank/images" > ${SYNOPKG_PKGDEST}/var/urbackup/dataset  
    echo "${SYNOPKG_PKGHOME}" > ${SYNOPKG_PKGVAR}/urbackup/backupfolder 
    #synogroup --add "administrators" "sc-urbackup" > /dev/null
    #addgroup "sc-urbackup" "administrators"
    sed -i 's/package/root/g' /var/packages/urbackup/conf/privilege
}

service_prestart ()
{
    CONFIG_DIR="${SYNOPKG_PKGVAR}"

    #synogroup --add "administrators" ${USER} > /dev/null
    #addgroup ${USER} "administrators"

    # Required: start-stop-daemon do not set environment variables
    #HOME=${SYNOPKG_PKGDEST}/var
    #export HOME
}