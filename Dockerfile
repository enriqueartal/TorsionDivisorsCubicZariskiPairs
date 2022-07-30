FROM sagemathinc/cocalc:latest

RUN sage -pip install jupyterlab

RUN sage -i sirocco

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
