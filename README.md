graylog-starter
===============

Starter project for a Graylog2 logging instance.

Installation
------------

### Clone repo and provision with vagrant:

    git clone git@github.com:zhibek/graylog-starter.git
    cd graylog-starter
    vagrant up


### Add the IP to your hosts file:

    10.1.1.30     graylog-starter.local


### View the site:

Visit [http://graylog-starter.local:9000/](http://graylog-starter.local:9000/) 
to view the Graylog2 web interface.

Login with user admin, password admin (see Security section below to change).


Security
--------

The Graylog2 password secret and the Graylog2 admin password are set in the 
default attributes file. This configuration should be changed from the 
defaults set in this starter project. The data may be stored in an encrypted 
databag or set using another method.

One way to create a password secret is using this shell command:
    pwgen -s 96 1.

One way to create a password is using this shell command (replacing 
yourpassword with the intended password):
    echo -n yourpassword | shasum -a 256 | awk '{print $1}'


Usage
-----

As part of the chef setup, a sample input (gelf udp) is created.

This input will accept UDP requests on port 12201, in GELF format.

To view log entries in Graylog2, configure an application/service to forward 
its logs to your Graylog2 instance.


References
----------

This starter project relies on the Graylog2 chef cookbook. Useful information is contained in the README for this cookbook:
https://github.com/Graylog2/graylog2-cookbook/blob/master/README.md

For more information on inputs, see:
http://docs.graylog.org/en/latest/pages/sending_data.html