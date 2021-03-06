#!/bin/bash

declare -x PRETALX_ROOT_DIR
PRETALX_ROOT_DIR="/usr/lib/python3.6/site-packages/pretalx"

declare -x PRETALX_BASE_DIR
[[ -z "${PRETALX_BASE_DIR}" ]] && PRETALX_BASE_DIR="/var/lib/pretalx"

declare -x PRETALX_DATA_DIR
[[ -z "${PRETALX_DATA_DIR}" ]] && PRETALX_DATA_DIR="${PRETALX_BASE_DIR}/data"

declare -x PRETALX_MEDIA_DIR
[[ -z "${PRETALX_MEDIA_DIR}" ]] && PRETALX_MEDIA_DIR="${PRETALX_BASE_DIR}/media"

declare -x PRETALX_LOGS_DIR
[[ -z "${PRETALX_LOGS_DIR}" ]] && PRETALX_LOGS_DIR="${PRETALX_BASE_DIR}/logs"

declare -x PRETALX_STATIC_DIR
[[ -z "${PRETALX_STATIC_DIR}" ]] && PRETALX_STATIC_DIR="${PRETALX_BASE_DIR}/static"
