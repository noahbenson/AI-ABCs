
# This lesson works on the pytorch notebook of the Jupyter Stacks.
FROM quay.io/jupyter/pytorch-notebook:python-3.12

# We want to make sure that jupyter book is installed.
RUN pip install jupyter-book

# We want to copy the lesson notebooks over so that (1) the lessons directory
# in the Jupyter Lab interface isn't full of the website config files and (2)
# the user doesn't overwrite the lesson files when they run them.
COPY lessons/0_introduction/ /home/jovyan/lessons/0_introduction/
COPY lessons/1_unsupervised-learning/ /home/jovyan/lessons/1_unsupervised-learning/
COPY lessons/2_supervised-learning/ /home/jovyan/lessons/2_supervised-learning/
COPY lessons/3_pytorch/ /home/jovyan/lessons/3_pytorch/
COPY lessons/4_neural-networks/ /home/jovyan/lessons/4_neural-networks/
