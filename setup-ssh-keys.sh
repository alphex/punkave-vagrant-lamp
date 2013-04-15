#!/bin/bash

set -e

cp ~/.ssh ssh
vagrant ssh -c 'find /vagrant/ssh/* ! -name authorized_keys2 -exec cp {} ~/.ssh/ \;'
rm -fR ssh