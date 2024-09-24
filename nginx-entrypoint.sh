#!/bin/sh

# Copyright © 2022 The OSRD Contributors
#
# SPDX-License-Identifier: LGPL-3.0-only

: "${NGINX_PORT:=80}"

sed -i "s|%NGINX_PORT%|${NGINX_PORT}|g" /etc/nginx/conf.d/nginx.conf

exec "$@"
