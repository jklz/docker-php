

# install and enable xdebug
pecl install -o -f xdebug
docker-php-ext-enable xdebug

# update xdebug config
echo "xdebug.profiler_enable=off" >> /usr/local/etc/php/conf.d/xdebug.ini
echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini
echo "xdebug.remote_autostart=on" >> /usr/local/etc/php/conf.d/xdebug.ini
echo "xdebug.remote_handler=dbgp" >> /usr/local/etc/php/conf.d/xdebug.ini
echo "xdebug.remote_mode=req" >> /usr/local/etc/php/conf.d/xdebug.ini
echo "xdebug.remote_host=host.docker.internal" >> /usr/local/etc/php/conf.d/xdebug.ini
echo "xdebug.remote_port=9001" >> /usr/local/etc/php/conf.d/xdebug.ini
echo "xdebug.remote_connect_back=1" >> /usr/local/etc/php/conf.d/xdebug.ini
echo "xdebug.idekey=PHPSTORM" >> /usr/local/etc/php/conf.d/xdebug.ini
