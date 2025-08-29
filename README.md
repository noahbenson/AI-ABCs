# AI ABCs

An introduction to artifical intelligence and machine learning for understanding
scientific data. This repository is organized into four lessons that are
intended for a four day workshop.


## Maintainers

- [Noah C. Benson](mailto:nben@uw.edu)


## Contents

- **`lessons/`**: Contains the lesson materials in `jupyter-book` format.
- **`Dockerfile`**: Docker image build instructions; these include only minor
  modifications to the `quay.io/jupyter/pytorch-notebook:python-3.12` image.
- **`docker-compose.yml`**: Docker compose instructions to start up the docker
  environment for the lessons.
- **`requirements.txt`**: The Python requirements that must be added to the
  docker image during the build phase.
- **`LICENSE.md`**: File explaining the licensing of the lesson materials.
- **`README.md`**: This file.
