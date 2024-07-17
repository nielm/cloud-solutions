#!/bin/bash
#
# Copyright 2024 Google LLC
#
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
#

## Description: Run unit tests in this directory isolated in a docker container.

FROM node:22.4.1-slim

ENTRYPOINT [ "/bin/sh", "-e", "-x", "-c" ]

CMD [ " \
    npm ci --cache=/tmp/npm    && \
    npm audit --cache=/tmp/npm && \
    npm test                      \
  " ]