#!/bin/sh

mysql -u root -p << EOF
CREATE DATABASE keystone;
GRANT ALL ON keystone.* TO 'keystone'@'%' IDENTIFIED BY 'openstacktest';
GRANT ALL ON keystone.* TO 'keystone'@'localhost' IDENTIFIED BY 'openstacktest';
GRANT ALL ON keystone.* TO 'keystone'@'172.16.1.1' IDENTIFIED BY 'openstacktest';
GRANT ALL ON keystone.* TO 'keystone'@'10.2.2.22' IDENTIFIED BY 'openstacktest';
FLUSH PRIVILEGES;

CREATE DATABASE glance;
GRANT ALL ON glance.* TO 'glance'@'%' IDENTIFIED BY 'openstacktest';
GRANT ALL ON glance.* TO 'glance'@'localhost' IDENTIFIED BY 'openstacktest';
GRANT ALL ON glance.* TO 'glance'@'172.16.1.1' IDENTIFIED BY 'openstacktest';
GRANT ALL ON glance.* TO 'glance'@'10.2.2.22' IDENTIFIED BY 'openstacktest';
FLUSH PRIVILEGES;

CREATE DATABASE neutron;
GRANT ALL ON neutron.* TO 'neutron'@'%' IDENTIFIED BY 'openstacktest';
GRANT ALL ON neutron.* TO 'neutron'@'localhost' IDENTIFIED BY 'openstacktest';
GRANT ALL ON neutron.* TO 'neutron'@'172.16.1.1' IDENTIFIED BY 'openstacktest';
GRANT ALL ON neutron.* TO 'neutron'@'10.2.2.22' IDENTIFIED BY 'openstacktest';
FLUSH PRIVILEGES;

CREATE DATABASE nova;
GRANT ALL ON nova.* TO 'nova'@'%' IDENTIFIED BY 'openstacktest';
GRANT ALL ON nova.* TO 'nova'@'localhost' IDENTIFIED BY 'openstacktest';
GRANT ALL ON nova.* TO 'nova'@'172.16.1.1' IDENTIFIED BY 'openstacktest';
GRANT ALL ON nova.* TO 'nova'@'10.2.2.22' IDENTIFIED BY 'openstacktest';
FLUSH PRIVILEGES;

CREATE DATABASE cinder;
GRANT ALL ON cinder.* TO 'cinder'@'%' IDENTIFIED BY 'openstacktest';
GRANT ALL ON cinder.* TO 'cinder'@'localhost' IDENTIFIED BY 'openstacktest';
GRANT ALL ON cinder.* TO 'cinder'@'172.16.1.1' IDENTIFIED BY 'openstacktest';
GRANT ALL ON cinder.* TO 'cinder'@'10.2.2.22' IDENTIFIED BY 'openstacktest';
FLUSH PRIVILEGES;
EOF
