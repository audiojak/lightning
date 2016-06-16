FROM drupal:8.1

# https://www.drupal.org/node/2710137
ENV LIGHTNING_VERSION 8.x-1.00-rc7
ENV LIGHTNING_MD5 e1ff9c185438c21478b5b59c94626e86

RUN curl -fSL "https://ftp.drupal.org/files/projects/lightning-${LIGHTNING_VERSION}-no-core.tar.gz" -o lightning.tar.gz \
	&& echo "${LIGHTNING_MD5} *lightning.tar.gz" | md5sum -c - \
	&& tar -xzf lightning.tar.gz -C profiles/ \
	&& rm lightning.tar.gz \
