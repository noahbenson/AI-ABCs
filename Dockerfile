
# This lesson works on the pytorch notebook of the Jupyter Stacks.
FROM quay.io/jupyter/pytorch-notebook:python-3.12

# We want to copy the lesson notebooks over so that (1) the lessons directory
# in the Jupyter Lab interface isn't full of the website config files and (2)
# the user doesn't overwrite the lesson files when they run them.
COPY lessons/unsupervised/ /home/jovyan/lessons/unsupervised/
COPY lessons/supervised/ /home/jovyan/lessons/supervised/
COPY lessons/pytorch/ /home/jovyan/lessons/pytorch/
COPY lessons/nn/ /home/jovyan/lessons/nn/


