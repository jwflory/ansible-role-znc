#!/bin/bash
YOURDOMAIN="{{ znc_fqdn }}"

[[ $RENEWED_LINEAGE != "/etc/letsencrypt/live/$YOURDOMAIN" ]] && exit 0
echo -e "Updating ZNC certificate for $YOURDOMAIN"
cat /etc/letsencrypt/live/$YOURDOMAIN/{privkey,fullchain}.pem > /var/lib/znc/.znc/znc.pem
