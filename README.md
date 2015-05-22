Mosquitto
=========

Docker build file for mosquitto. This docker file is based on
debian and mosquitto version 1.X with websocket support enabled

Based on gschmutz/Mosquitto

Get it
======
    sudo docker pull gzockoll/mosquitto

Run it
======
    sudo docker run -p 1883:1883 -p 8080:8080 --name mosquitto -d gzockoll/mosquitto

In this case, a random password will be generated. You can find the password in the logs.

    sudo docker run -p 1883:1883 -p 8080:8080 --name mosquitto -d -e PASSWORD=secret gzockoll/mosquitto

In this case, the given password is used and you may login with username "user" and the given password

    sudo docker run -p 1883:1883 -p 8080:8080 --name mosquitto -d -e NO_AUTH=true gzockoll/mosquitto

