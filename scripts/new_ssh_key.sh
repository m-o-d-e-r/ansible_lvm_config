#!/bin/bash

echo -n "[user for whom keys will be generated] > "
read username

key_filename="certs/user_"$username

ssh-keygen -f $key_filename -N ""

echo -n "[target host] > "
read host

ssh-copy-id -i $key_filename $username@$host
