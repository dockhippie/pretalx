#!/bin/bash
set -eo pipefail

declare -x PRETALX_SITE_DEBUG
[[ -z "${PRETALX_SITE_DEBUG}" ]] && PRETALX_SITE_DEBUG="false"

declare -x PRETALX_SITE_URL
[[ -z "${PRETALX_SITE_URL}" ]] && PRETALX_SITE_URL=""

declare -x PRETALX_SITE_SECRET
[[ -z "${PRETALX_SITE_SECRET}" ]] && PRETALX_SITE_SECRET=""

true
