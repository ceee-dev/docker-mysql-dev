#/usr/bin/bash

echo "MYSQL_ROOT_PASSWOR=$(cat /dev/urandom | strings | grep -Eoa "[a-zA-Z0-9@$%&_]*" | head -n 10 | tr -d '\n'| cut -c1-16)" > .env
echo "PMM_PASSWOR=$(cat /dev/urandom | strings | grep -Eoa "[a-zA-Z0-9@$%&_]*" | head -n 10 | tr -d '\n'| cut -c1-16)" >> .env
