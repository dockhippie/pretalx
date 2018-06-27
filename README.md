# Pretalx

[![](https://images.microbadger.com/badges/image/webhippie/pretalx.svg)](https://microbadger.com/images/webhippie/pretalx "Get your own image badge on microbadger.com")

These are docker images for [Pretalx](https://pretalx.org) running on an [Python container](https://registry.hub.docker.com/u/webhippie/python/).


## Versions

To get an overview about the available versions please take a look at the [GitHub branches](https://github.com/dockhippie/pretalx/branches/all) or our [Docker Hub tags](https://hub.docker.com/r/webhippie/pretalx/tags/), these lists are always up to date.


## Volumes

* /var/lib/pretalx


## Ports

* 3000


## Available environment variables

```bash
PRETALX_BASE_DIR /var/lib/pretalx
PRETALX_DATA_DIR ${PRETALX_BASE_DIR}/data
PRETALX_MEDIA_DIR ${PRETALX_BASE_DIR}/media
PRETALX_LOGS_DIR ${PRETALX_BASE_DIR}/logs
PRETALX_STATIC_DIR ${PRETALX_BASE_DIR}/static
PRETALX_DB_TYPE sqlite3
PRETALX_DB_TEST_TIMEOUT 60
PRETALX_DB_TEST_FAIL true
PRETALX_DB_HOST # mysql, postgres
PRETALX_DB_PORT # 3306, 5432
PRETALX_DB_DATABASE pretalx
PRETALX_DB_USERNAME # root, postgres
PRETALX_DB_PASSWORD
PRETALX_SITE_DEBUG false
PRETALX_SITE_URL
PRETALX_SITE_SECRET
PRETALX_MAIL_FROM pretalx@localhost
PRETALX_MAIL_HOST localhost
PRETALX_MAIL_PORT 25
PRETALX_MAIL_USERNAME
PRETALX_MAIL_PASSWORD
PRETALX_MAIL_TLS false
PRETALX_MAIL_SSL false
PRETALX_CELERY_HOST redis
PRETALX_CELERY_PORT 6379
PRETALX_CELERY_BACKENDDB 1
PRETALX_CELERY_BROKERDB 2
PRETALX_CELERY_TEST_TIMEOUT 60
PRETALX_CELERY_TEST_FAIL true
PRETALX_REDIS_HOST redis
PRETALX_REDIS_PORT 6379
PRETALX_REDIS_DB 0
PRETALX_REDIS_SESSION False
PRETALX_REDIS_TEST_TIMEOUT 60
PRETALX_REDIS_TEST_FAIL true
PRETALX_ADMIN_USERNAME admin
PRETALX_ADMIN_PASSWORD admin
PRETALX_ADMIN_ORGANIZER Conference
PRETALX_ADMIN_SLUG conference
```


## Inherited environment variables

* [webhippie/python](https://github.com/dockhippie/python#available-environment-variables)
* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2018 Thomas Boerger <http://www.webhippie.de>
```
