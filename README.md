# Pennywise Store
a Snack Store on [Sails v1](https://sailsjs.com) application. 

## Requirements
* Node v8.4
* SailsJS v1.0.1

```sh
$  npm install sails@1.0.1 -g
```

## Backup
1. Create a Database on PostgreSQL.
2. Restore `store_backup.sql` located at the project root directory.

### Example using pgAdmin4
1. Right click on created database and select _Restore…_ option.
2. Select the backup file.
![Select backup file](doc/img/backup1.png?raw=true "Selecting backup file")
3. Enable the following options: _Pre-data_, _Data_, _Post-data_. Click the Restore button.
![Enable options](doc/img/backup2.png?raw=true "Enable options")


### Version info

This app was originally generated on Wed May 02 2018 15:01:34 GMT-0600 (CST) using Sails v1.0.1.