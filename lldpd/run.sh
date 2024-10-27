#!/usr/bin/with-contenv bashio

# Enable to see trace logs
#bashio::log.level "all"

HOSTNAME="homeassistant"

if bashio::supervisor.ping; then
  HOSTNAME="$(bashio::host.hostname)"
fi

echo "configure system hostname ${HOSTNAME}" > /etc/lldpd.conf
exec lldpd -d
