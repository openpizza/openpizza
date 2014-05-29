#!/bin/bash

wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -
sudo bash -c "echo \"deb http://packages.elasticsearch.org/elasticsearch/1.1/debian stable main\" >> /etc/apt/sources.list"
sudo add-apt-repository ppa:webupd8team/java -yy

sudo apt-get update -q -y

sudo bash -c "echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections"

sudo apt-get -y --quiet install gawk libgdbm-dev pkg-config libffi-dev build-essential openssl libreadline6 libreadline6-dev curl git zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libc6-dev libncurses5-dev automake libtool bison subversion python postgresql postgresql-contrib libpq-dev redis-server python-software-properties elasticsearch oracle-java8-installer

su -l vagrant -c "curl -L https://get.rvm.io | bash -s stable"
su -l vagrant -c "source \"/home/vagrant/.rvm/scripts/rvm\""
su -l vagrant -c "rvm install ruby-2.1.2"
su -l vagrant -c "gem install bundler"

sudo -u postgres psql -U postgres -d postgres -c "CREATE USER openpizza WITH PASSWORD 'password1' CREATEDB;"
