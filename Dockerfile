
# This lesson works on the pytorch notebook of the Jupyter Stacks.
FROM quay.io/jupyter/pytorch-notebook:python-3.12

# We want to make sure that our requirements file is satisfied!
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN rm requirements.txt

# For the jupyterlab-a11y-checker, we need nodejs installed by conda.
USER root
RUN conda install -cconda-forge 'nodejs>=20' "blas=*=openblas"
USER $NB_USER

# Fix the Jupyter startup to not show the right sidepanel or ask about updates.
# First disable the news & update popup.
RUN jupyter labextension disable "@jupyterlab/apputils-extension:announcements"
# For now also disable the a11y checker because it currently pops up an annoying panel.
RUN jupyter labextension disable "jupyterlab-a11y-checker"

# We want to copy the lesson notebooks over so that (1) the lessons directory
# in the Jupyter Lab interface isn't full of the website config files and (2)
# the user doesn't overwrite the lesson files when they run them.
COPY lessons/0_introduction/          /home/${NB_USER}/lessons/0_introduction/
COPY lessons/1_unsupervised-learning/ /home/${NB_USER}/lessons/1_unsupervised-learning/
COPY lessons/2_supervised-learning/   /home/${NB_USER}/lessons/2_supervised-learning/
COPY lessons/3_pytorch/               /home/${NB_USER}/lessons/3_pytorch/
COPY lessons/4_neural-networks/       /home/${NB_USER}/lessons/4_neural-networks/

# Minor config stuff:
# Minor update to the prompt in the terminal:
RUN echo 'export PS1="\[\e[3;30m\][Docker:AI-ABCs]\[\e[0m\] \[\e[1;34m\]\w\[\e[1;39m\]\$\[\e[0m\] "' >> "${HOME}/.bashrc"
# Copy over the README file:
COPY docker/README.md "${HOME}/README.md"
# Copy over some custom css for the launcher and our overrides.
COPY docker/custom.css /home/${NB_USER}/.jupyter/custom/custom.css
COPY docker/overrides.json \
    /opt/conda/share/jupyter/lab/settings/overrides.json

# Fix the permissions
USER root
RUN echo 'c.LabApp.custom_css = True' \
    >> /opt/conda/etc/jupyter/jupyter_lab_config.py
RUN fix-permissions "/home/${NB_USER}"
