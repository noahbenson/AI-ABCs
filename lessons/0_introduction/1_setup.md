---
jupytext:
  cell_metadata_filter: -all
  formats: md:myst
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.11.5
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---
# Setup

This course uses the following tools and libraries, all of which are free:
* Python
* Jupyter
* NumPy
* Matplotlib
* Scikit-learn
* PyTorch

Installing each of these tools locally is certainly possible using
[pip](https://pypi.org/project/pip/) and/or
[conda](https://github.com/conda/conda), but it is typically easier to run the
lessons in a Docker container.  [Docker](https://www.docker.com/) is a tool for
creating, distributing, and running virtual machines with various software and
configurations pre-installed. Installation instructions for Docker can be found
at [Docker's Getting Started page](https://www.docker.com/get-started/).


## Getting Started using `docker run`

Once Docker has been installed, all of the material in this course can be run
using a single publicly-available docker image named
`quay.io/jupyter/pytorch-notebook:python-3.12`.  This Docker image already
contains all of the tools above, including a ready installation of Jupyter. We
can start the Jupyter instance using the following command in a terminal:

```bash
docker run --rm -it -p8888:8888 quay.io/jupyter/pytorch-notebook:python-3.12
```

The first time you run this command, it will likely need to pull (download) the
image. This can take several minutes depending on your internet connection, but
it should save the image locally so that subsequent commands don't require as
much time. Once the Docker image has been pulled, Docker will start up the
embedded virtual machine (a Docker "container"). During startup, the virtual
machine will print several messages to the screen; eventually, it should print
something like the following:

```
    To access the server, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-7-open.html
    Or copy and paste one of these URLs:
        http://localhost:8888/lab?token=b53e9f7c290d48eb3cc9886a288bbcca8ae5f9d61025d54e
        http://127.0.0.1:8888/lab?token=b53e9f7c290d48eb3cc9886a288bbcca8ae5f9d61025d54e
```

The precise message may be slightly different, but the important part is that
you find a web address that starts with `http://127.0.0.1/` and that ends with
a long `token` of numbers and the letters `a`&ndash;`f`. Copy the last line of
this message (starting with the `http:` and ending with the entire token) into
your web browser navigation bar, and it should load the Jupyter instance
embedded in the Docker container.

All of the lessons in this course can be completed using the Jupyter instance
loaded using these instructions.


## Getting Started using `docker compose`

An even easier way to get started with the lessons is to use the `docker
compose` command along with the `docker-compose.yml` file in this Jupyter
Book's [GitHub repository](https://github.com/noahbenson/AI-ABCs). To do this,
you must have Docker installed and running, and you must have git installed;
see the [Software Carpentry git lesson](
https://swcarpentry.github.io/git-novice/) for help installing git and getting
accustomed to its basic usage. In the command line enter the following
commands:
1. `git clone https://github.com/noahbenson/AI-ABCs`
2. `cd AI-ABCs`
3. `docker compose up`

The final command should start the same docker image, but it will include a
directory `lessons` that contains the lesson notebooks for the course.
