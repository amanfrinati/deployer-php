FROM php:7.4-cli

RUN curl -LO https://deployer.org/releases/v6.8.0/deployer.phar; \
    mv deployer.phar /usr/local/bin/dep; \
    chmod +x /usr/local/bin/dep;

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod 777 /usr/local/bin/docker-entrypoint.sh; \
    ln -s /usr/local/bin/docker-entrypoint.sh /;

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["dep"]
