# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2022 Dell Inc, or its subsidiaries.

FROM docker.io/library/python:3.10.8-slim

RUN apt-get update && apt-get install -y --no-install-recommends gettext libsqlite3-dev && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir "sqlalchemy<2.0.0" sztpd==0.0.11
