Open Pizza
==========

Build Status
------------

[![Build Status](https://travis-ci.org/openpizza/openpizza.svg?branch=master)](https://travis-ci.org/openpizza/openpizza)
[![Coverage Status](https://coveralls.io/repos/openpizza/openpizza/badge.png?branch=master)](https://coveralls.io/r/openpizza/openpizza?branch=master)
[![Code Climate](https://codeclimate.com/github/openpizza/openpizza.png)](https://codeclimate.com/github/openpizza/openpizza)

API Documentation
-----------------

Interactive API Documentation with Mock Server and API Testing.
http://docs.openpizza.apiary.io/

Our Mission
-----------

Pizza is a local product, made by local people. Delivery Service websites
take insane amounts of rates of the prices of the pizza bakers. Some take
up to 20

Main Features
-------------

- Order Pizza Collaboratively

Get started on developing
-------------------------

Install virtualbox and vagrant. https://www.virtualbox.org/
http://www.vagrantup.com/

Fork & Clone the repository. Then start the vagrant box, this might take a
while, since it downloads the trusty64 base box and then installs all
requirements. (Postgres, Rails, etc.)

Make sure you have a stable internet connection for the installation process
as you will need to destroy the vagrant box when the connection breaks.

Future starts will not take that long, as the script is only called on the
first start.

The app lies in the directory `/home/vagrant/app`. Once you have created and
migrated the database you can start the webapp and access it on
`http://192.168.0.10:3000`

	rails server

If you run into an error, make sure postgres and elasticsearch are running

	sudo service postgresql start && sudo service elasticsearch start
