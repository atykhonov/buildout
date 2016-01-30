#!/bin/sh
# call "rabbitmqctl stop" when exiting
trap "{ echo Stopping rabbitmq; ${buildout:bin-directory}/rabbitmqctl stop; exit 0; }" EXIT

echo Starting rabbitmq
${buildout:bin-directory}/rabbitmq-server
