# Shopware 6 production template

This repository contains the production template that enables you to build,
package and deploy Shopware 6 to production shops.


# The First Install
1. Change the containername and change the names even for the `makefile`
1. Delete the keys inside the `config/jwt/` folder
2. Run `bin/console system:install`

# How to install the Shop after starting containers
1. At first: create a new MYSQL-Database and a new schema `shopware`
2. Run composer install, to fill and index the shopware database


# Hints & Fix

## build-admin can not execute
- Give correct rights for user `www-data` with running `sudo chown -R 33:33 "/var/www/.npm"`
- `bin/build-js` should work now

# ToDo
- Adding E2E Tests
- HowTo using redis and elastic
