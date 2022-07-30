FROM sagemathinc/cocalc:latest

RUN sage -pip install jupyterlab

USER root
RUN sage -i sirocco
USER sage

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
