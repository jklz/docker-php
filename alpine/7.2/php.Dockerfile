###########################################
#           PHP 7.2 Enviroment            #
###########################################

FROM php:7.2-alpine

LABEL maintainer="Jared Spencer <jklz@me.com>"

COPY --chown=0:0  ./scripts/setup-base-alpine.sh /setup/scripts/setup-base-alpine.sh

RUN chmod 777 /setup/scripts/setup-base-alpine.sh

RUN /setup/scripts/setup-base-alpine.sh
