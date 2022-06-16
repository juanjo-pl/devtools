# README

Scripts to help development process.

## Commands

* `devtools-create-database`
* `devtools-drop-database`
* `devtools-logs`
* `devtools-start`
* `devtools-stop`

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
