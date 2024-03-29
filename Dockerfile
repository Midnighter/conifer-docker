# Copyright (c) 2020, Moritz E. Beber.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM debian:11.2-slim AS builder

ARG TAG="v1.0.2"

RUN set -eux \
    && apt-get update \
    && apt-get install --yes \
        build-essential \
        ca-certificates \
        git \
        libz-dev

WORKDIR /opt

RUN set -eux \
    && git clone https://github.com/Ivarz/Conifer.git \
    && cd Conifer \
    && git checkout ${TAG} -b latest \
    && git submodule update --init --recursive \
    && gcc -static -std=c99 -Wall -Wextra -O3 -D_POSIX_C_SOURCE=200809L -I third_party/uthash/src -I . src/utils.c src/kraken_stats.c src/kraken_taxo.c src/main.c -o conifer -l:libm.a -l:libz.a

FROM debian:11.2-slim

RUN set -eux \
    && apt-get update \
    && apt-get install --yes procps \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY --from=builder /opt/Conifer/conifer /usr/local/bin/

ENTRYPOINT ["conifer"]

