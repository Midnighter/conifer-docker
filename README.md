# Docker Image for Conifer

[Conifer](https://github.com/Ivarz/Conifer/) is a convenient utility for
analyzing confidence scores in
[kraken2](https://github.com/DerrickWood/kraken2/)'s taxonomic sequence
classification output.

## Usage

1. You need to have [Docker](https://www.docker.com/get-started) set up
   correctly.
2. Build the image
    ```
    docker build --tag Midnighter/conifer:latest .
    ```
3. Run conifer
    ```
    docker run --rm Midnighter/conifer:latest --version
    ```

## Copyright

* Copyright © 2020, Moritz E. Beber.
* Free, open source software distributed under the [Apache Software License
  2.0](https://www.apache.org/licenses/LICENSE-2.0).

