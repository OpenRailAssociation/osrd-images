# Copyright © 2022 The OSRD Contributors
#
# SPDX-License-Identifier: LGPL-3.0-only

# Build json index file
FROM python:3.10-slim AS builder
WORKDIR /app
COPY . /app/osrd-images/
RUN python /app/osrd-images/scripts/generate.py > /app/osrd-images/image_path.json

# Build nginx container
FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY nginx-entrypoint.sh /entrypoint.sh
COPY --from=builder ./app/osrd-images/assets /srv/assets
COPY --from=builder ./app/osrd-images/image_path.json /srv/image_path.json
ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
