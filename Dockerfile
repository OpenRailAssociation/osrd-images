    # Copyright © 2022 The OSRD Contributors
    #
    # SPDX-License-Identifier: LGPL-3.0-only

    FROM python:3.10-slim as builder

    WORKDIR /app

    COPY . /app/osrd-images/

    RUN python /app/osrd-images/scripts/generate.py > /app/osrd-images/image_path.json

    FROM nginx:alpine

    COPY nginx.conf /etc/nginx/conf.d
    COPY nginx-entrypoint.sh /entrypoint.sh

    COPY --from=builder ./app/osrd-images/ /srv

    ENTRYPOINT ["/entrypoint.sh"]
    CMD ["nginx", "-g", "daemon off;"]

    EXPOSE 80
