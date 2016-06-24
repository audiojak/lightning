FROM drupal:8.1

# https://www.drupal.org/project/lightning/releases/8.x-1.00
ENV LIGHTNING_VERSION 8.x-1.00
ENV LIGHTNING_MD5 90e2e36c99560a9c0f83301c73a025d7

RUN curl -fSL "https://ftp.drupal.org/files/projects/lightning-${LIGHTNING_VERSION}-no-core.tar.gz" -o lightning.tar.gz \
	&& echo "${LIGHTNING_MD5} *lightning.tar.gz" | md5sum -c - \
	&& tar -xzf lightning.tar.gz -C profiles/ \
	&& rm lightning.tar.gz \
