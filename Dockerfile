FROM php:7.4-cli

RUN curl -LO https://deployer.org/releases/v6.8.0/deployer.phar; \
		mv deployer.phar /usr/local/bin/dep; \
		chmod +x /usr/local/bin/dep;

CMD ["dep"]
