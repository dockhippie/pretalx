#!/bin/bash

declare -x PRETALX_DB_TYPE
[[ -z "${PRETALX_DB_TYPE}" ]] && PRETALX_DB_TYPE="sqlite3"

declare -x PRETALX_DB_TEST_TIMEOUT
[[ -z "${PRETALX_DB_TEST_TIMEOUT}" ]] && PRETALX_DB_TEST_TIMEOUT="60"

declare -x PRETALX_DB_TEST_FAIL
[[ -z "${PRETALX_DB_TEST_FAIL}" ]] && PRETALX_DB_TEST_FAIL="true"

case "${PRETALX_DB_TYPE}" in
  "sqlite3")
    declare -x PRETALX_DB_DATABASE
    [[ -z "${PRETALX_DB_DATABASE}" ]] && PRETALX_DB_DATABASE="/var/lib/pretalx/database.sqlite3"
    ;;

  "mysql")
    declare -x PRETALX_DB_HOST
    [[ -z "${PRETALX_DB_HOST}" ]] && PRETALX_DB_HOST="mysql"

    declare -x PRETALX_DB_PORT
    [[ -z "${PRETALX_DB_PORT}" ]] && PRETALX_DB_PORT="3306"

    declare -x PRETALX_DB_DATABASE
    [[ -z "${PRETALX_DB_DATABASE}" ]] && PRETALX_DB_DATABASE="pretalx"

    declare -x PRETALX_DB_USERNAME
    [[ -z "${PRETALX_DB_USERNAME}" ]] && PRETALX_DB_USERNAME="root"

    declare -x PRETALX_DB_PASSWORD
    [[ -z "${PRETALX_DB_PASSWORD}" ]] && PRETALX_DB_PASSWORD=""
    ;;

  "postgresql")
    declare -x PRETALX_DB_HOST
    [[ -z "${PRETALX_DB_HOST}" ]] && PRETALX_DB_HOST="postgres"

    declare -x PRETALX_DB_PORT
    [[ -z "${PRETALX_DB_PORT}" ]] && PRETALX_DB_PORT="5432"

    declare -x PRETALX_DB_DATABASE
    [[ -z "${PRETALX_DB_DATABASE}" ]] && PRETALX_DB_DATABASE="pretalx"

    declare -x PRETALX_DB_USERNAME
    [[ -z "${PRETALX_DB_USERNAME}" ]] && PRETALX_DB_USERNAME="postgres"

    declare -x PRETALX_DB_PASSWORD
    [[ -z "${PRETALX_DB_PASSWORD}" ]] && PRETALX_DB_PASSWORD=""
    ;;
esac
