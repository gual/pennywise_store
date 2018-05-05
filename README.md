# Pennywise Store
a Snack Store on [Sails v1](https://sailsjs.com) application. 

## Requirements
* Node v8.4
* SailsJS v1.0.1
* PostgreSQL v9.4
* MongoDB v3.4 (For sessions)

## Backup
1. Create a Database on PostgreSQL.
2. Restore `store_backup.sql` located at the project root directory.

### Example using pgAdmin4
1. Right click on created database and select _Restore…_ option.
2. Select the backup file.
![Select backup file](doc/img/backup1.png?raw=true "Selecting backup file")
3. Enable the following options: _Pre-data_, _Data_, _Post-data_. Click the Restore button.
![Enable options](doc/img/backup2.png?raw=true "Enable options")

## Installing
```sh
$ npm install sails@1.0.1 -g
$ npm install
```

## Running
```sh
$ DATABASE_URL='postgresql://user:pass@host:port/db' MONGODB_URI='mongodb://user:pass@host/db' sails lift
```

### Example
```sh
DATABASE_URL='postgresql://app_user:app_pass@localhost:5432/store' MONGODB_URI='mongodb://hero4:b00uk2n@3sde.server.com:153/store_453'sails lift
```

## Frontend
It has a small setup for login and signup.

## Postman
A collection of requests and variables for POSTMAN is included in `requirements.postman_collection.json` file located at the project root directory. The _Request CSRF Token_ *should be sent first* in order to adquire the CSRF token for the next requests.
![Postman](doc/img/postman.png?raw=true "Postman")

## Version info

This app was originally generated on Wed May 02 2018 15:01:34 GMT-0600 (CST) using Sails v1.0.1.