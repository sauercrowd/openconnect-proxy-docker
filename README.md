# openconnect-proxy-docker

This Docker Image contains an openconnect client and a proxy server.
It should make the painful openconnect client a little less painful.

## Prerequisites

Install htpasswd and corkscrew

    $ sudo apt-get install apache-utils corkscrew

## Running

First set the variables in magic according to your credentials.

Next start the server with ```./magic start-container```

The container will be started in the background. You could check what is happening inside by using ```docker logs```

Your container should be now connected via VPN and the proxy server should be up and running.

Now you need to add a user. Do that with ```./magic adduser USERNAME``` and enter a password.

Your ready to use the proxy server with your username and your password.
Host for the proxy is (obviously) localhost and the port is set according to the first lines in ```magic```.

If you want to use ssh via the vpn connection, execute

    ./magic ssh [ARGS]

Example:

    ./magic ssh ubuntu@myinternalip

## Building
Execute

    docker build -t imagename .

and edit the ```IMAGE``` variable in ```magic``` according to the imagename.
