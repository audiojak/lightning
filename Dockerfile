FROM drupal:8.1

# https://www.drupal.org/node/2710137
ENV LIGHTNING_VERSION 8.x-1.00-rc3
ENV LIGHTNING_MD5 cc1d51c20758540a5ea0d09c7461978e

RUN curl -fSL "https://ftp.drupal.org/files/projects/lightning-${LIGHTNING_VERSION}-no-core.tar.gz" -o lightning.tar.gz \
	&& echo "${LIGHTNING_MD5} *lightning.tar.gz" | md5sum -c - \
	&& tar -xzf lightning.tar.gz -C profiles/ \
	&& rm lightning.tar.gz \
