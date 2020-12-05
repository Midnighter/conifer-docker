# Docker Image for Conifer

[![Docker image pulls](https://img.shields.io/docker/pulls/midnighter/conifer)](https://hub.docker.com/r/midnighter/conifer)
[![License](https://img.shields.io/badge/license-Apache--2.0-blueviolet)](https://opensource.org/licenses/Apache-2.0)

[Conifer](https://github.com/Ivarz/Conifer/) is a convenient utility for
analyzing confidence scores in
[kraken2](https://github.com/DerrickWood/kraken2/)'s taxonomic sequence
classification output.

## Usage

1. You need to have [Docker](https://www.docker.com/get-started) set up
   correctly.
2. Either pull the public image
    ```
    docker pull midnighter/conifer:latest
    ```
    or build the image locally from the `Dockerfile`
    ```
    docker build --tag midnighter/conifer:latest .
    ```
3. Run conifer
    ```
    docker run --rm midnighter/conifer:latest --version
    ```

## Copyright

* Copyright © 2020, Moritz E. Beber.
* Free, open source software distributed under the [Apache Software License
  2.0](https://www.apache.org/licenses/LICENSE-2.0).

