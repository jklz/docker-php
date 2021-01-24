


# install pdo_mysql
docker-php-ext-install pdo_mysql

# install redis
pecl install -o -f redis
docker-php-ext-enable redis

# install simplexml
apk add --no-cache libxml2-dev
docker-php-ext-install simplexml

# install intl
docker-php-ext-install intl

# install zip
docker-php-ext-install zip

# install json
docker-php-ext-install json

# install ds
pecl install -o ds
docker-php-ext-enable ds
