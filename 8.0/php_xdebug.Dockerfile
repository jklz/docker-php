###########################################
#           PHP 8.0 FPM Enviroment        #
###########################################

FROM jklz/php:8.0

LABEL maintainer="Jared Spencer <jklz@me.com>"

COPY --chown=0:0  ./scripts/setup-xdebug.sh /setup/scripts/setup-xdebug.sh

RUN chmod 777 /setup/scripts/setup-xdebug.sh

RUN /setup/scripts/setup-xdebug.sh

EXPOSE 9001;
