# haproxy_logging_demo
Demo of haproxy remote logging with Vagrant and masterless Salt provisioning

## Vagrant setup
This demo uses Vagrant to setup three boxes:
 * syslog1 - To be used as the remote logging server
 * web1 - To be used for the backend web server
 * lb1 - The haproxy server to recieve the frontend traffic and log to *syslog1*

## Salt provisioning
This demo uses masterless Salt in the boxes to do the configuration for each system.

This works best with the OEL 7 image with Salt already installed as described in https://github.com/choukaikun/vagrant-salt-masterless.
