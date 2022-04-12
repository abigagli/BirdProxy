#!/bin/bash
/usr/bin/logger -t CERTRENEW "Cert renewal start"
/usr/local/bin/docker-compose run -T --rm certbot renew | /usr/bin/logger -t CERTRENEW && /usr/local/bin/docker-compose exec -T proxy nginx -s reload
