#!/bin/bash

declare -x PRETALX_MAIL_FROM
[[ -z "${PRETALX_MAIL_FROM}" ]] && PRETALX_MAIL_FROM="pretalx@localhost"

declare -x PRETALX_MAIL_HOST
[[ -z "${PRETALX_MAIL_HOST}" ]] && PRETALX_MAIL_HOST="localhost"

declare -x PRETALX_MAIL_PORT
[[ -z "${PRETALX_MAIL_PORT}" ]] && PRETALX_MAIL_PORT="25"

declare -x PRETALX_MAIL_USERNAME
[[ -z "${PRETALX_MAIL_USERNAME}" ]] && PRETALX_MAIL_USERNAME=""

declare -x PRETALX_MAIL_PASSWORD
[[ -z "${PRETALX_MAIL_PASSWORD}" ]] && PRETALX_MAIL_PASSWORD=""

declare -x PRETALX_MAIL_TLS
[[ -z "${PRETALX_MAIL_TLS}" ]] && PRETALX_MAIL_TLS="false"

declare -x PRETALX_MAIL_SSL
[[ -z "${PRETALX_MAIL_SSL}" ]] && PRETALX_MAIL_SSL="false"
