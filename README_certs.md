Obtain letsencrypt certificate:
1. Start the reverse proxy disabling listening on 443 and ssl certificates/keys in default.conf
2. execute `docker-compose run --rm certbot certonly`
3. Change ownership of `certbot/**` from root to whatever user the nginx docker runs from
3. Re-enable https/ssl in reverse proxy configuration and restart it


Renew certificates manually with
1. docker-compose run --rm certbot renew
2. docker exec -it birdproxy nginx -s reload

Install crontab-based renewal with
1. `utils/setup_cert_renewal.sh`
