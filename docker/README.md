# The AI ABCs JupyterLab Docker Container

Welcome to the [AI ABCs](https://nben.net/AI-ABCs/) Jupyter Lab server and
Docker container!

This server runs inside of a [Docker container](https://docker.com) (virtual
machine) in order to simplify " "installation and setup details. Because of
this, all the work you do in this environment will be invisible to your outside
computer, **except for the `repo/` directory**. The `repo` directory is same
directory from which you ran `docker compose up` to start this interface. Any
work saved there will be preserved.

The `lessons/` directory contains original copies the lesson notebooks and is
**not** saved between docker sessions.

