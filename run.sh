#!/bin/sh

if [ -z "$USER" ]; then
  USER=$(pwgen -N 1)
fi
if [ -z "$PASSWORD" ]; then
  PASSWORD=$(pwgen -N 1)
fi
mosquitto_passwd -c -b /etc/mosquitto/users "${USER}" "${PASSWORD}"
echo "You may login with ${USER}:${PASSWORD}"
mosquitto -c /etc/mosquitto/mosquitto.conf
