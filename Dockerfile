FROM sagemathinc/cocalc:latest


#USER root
USER sage
RUN sage -i sirocco
RUN sage -pip install jupyterlab
#USER sage

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
