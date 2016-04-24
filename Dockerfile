FROM drupal:8.1

# install the PHP extensions we need
RUN apt-get update \
  && apt-get install -y git \
        && rm -rf /var/lib/apt/lists/* \
        && docker-php-ext-install bcmath

# install Composer globally
RUN curl -sS https://getcomposer.org/installer | php \
  && mv composer.phar /usr/local/bin/composer

# install Lightning
RUN composer config repositories.drupal composer https://packagist.drupal-composer.org \
  && composer require "drupal/lightning 8.1.00-rc3" --prefer-dist \
  && chown -R www-data:www-data modules
