# README

Scripts to help development process.  It has a docker composer with the following docker containers:

* Postgres database
* Kafka broker


## Commands

### Database related
* `devtools-create-all-databases`: Creates all known databases in the local environment.
* `devtools-create-database`: Creates a database in the local environment.
* `devtools-drop-database`: Drops a database in the local environment.
* `devtools-psql`: Starts a psql session to connect to the local Postgres database.

### Container Related
* `devtools-start`: brings the dev environment up. 
* `devtools-logs`: shows the container instances logs
* `devtools-stop`: stops the dev environmet
* `devtools-down`: stops and deletes the dev environement

## Requirements

### 1. docker
```sh
brew install --cask docker
```

### 2. psql command line
On macos you can install it with brew.
```sh
brew install libpq
```

### 3. Add commands to the path
```sh
# devtools
export PATH="$HOME/{YOUR_CUSTOM_PATH}/dev-tools/bin:$PATH"
```
