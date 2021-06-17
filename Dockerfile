# Use tensorflow/tensorflow as the base image
# Change the build arg to edit the tensorflow version.
# Only supporting python3.
ARG TF_VERSION=2.4.2-gpu

FROM tensorflow/tensorflow:${TF_VERSION}

# System maintenance
RUN /usr/bin/python3 -m pip install --upgrade pip

WORKDIR /notebooks

# Copy over deepcell notebooks
COPY notebooks/ /notebooks/

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]