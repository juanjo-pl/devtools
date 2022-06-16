#!/bin/bash
set -u
. $(dirname "$0")/inc/env-values.sh 

function display_debug() {
    if ($DEBUG); then 
        echo "$(date +"%Y-%m-%dT%H:%M:%S%z" ) DEBUG  $1" 
    fi
}

function display_info() {
    echo "$(date +"%Y-%m-%dT%H:%M:%S%z" ) INFO   $1" 
}

function display_error() {
    echo "$(date +"%Y-%m-%dT%H:%M:%S%z" ) ERROR  $1" 
}

################################################################################
# Help                                                                         #
################################################################################
function display_help() {
    echo "${DETAILED_HELP}"
}

function check_help_args() {
    if [ $# -eq 0 ]; then 
        return 0
    fi

    if [ "$1" == "-h" ]; then
        echo ${USAGE_HELP}
        exit 0
    fi
    if [ "$1" == "--help" ]; then
        display_help
        exit 0
    fi
}

function check_require_argument() {
    if [ $# -eq 0 ]; then
        echo ${USAGE_HELP}
        exit 0
    fi
    check_help_args $@
}

################################################################################
# Postgres                                                                     #
################################################################################

function run_pgsql() {
    display_debug "sql to execute: $1"

    export PGPASSWORD=$PGPASSWORD && \
    psql --host=$PGHOST --port=$PGPORT --username=$PGUSER --dbname=$PGDATABASE -c "$1"
}

function get_pgsql_version() {
    sql="show server_version;"
    export PGPASSWORD=$PGPASSWORD && 
    psql --host=$PGHOST --port=$PGPORT --username=$PGUSER --dbname=$PGDATABASE -c "${sql}" | sed '3q;d'
}