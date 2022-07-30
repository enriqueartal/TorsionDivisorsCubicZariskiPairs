FROM sagemat'hinc/cocalc:latest

RUN sage -pip install jupyterlab

RUN sage -pip install sirocco

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
