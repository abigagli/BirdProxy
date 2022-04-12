#!/bin/bash
SCRIPT_PATH="$(dirname "$(readlink -f "$0")")"
ROOT_PATH="$(cd ${SCRIPT_PATH}/.. && pwd)"


/usr/bin/crontab -l > /tmp/cron

sed -i '/CERTRENEW/d' /tmp/cron

echo "Configuring CERTRENEW cron job"
echo "45 0 * * * cd ${ROOT_PATH} && utils/cert_renew.sh && /usr/bin/logger -t CERTRENEW Cert renewal end" > /tmp/cron
/usr/bin/crontab /tmp/cron
