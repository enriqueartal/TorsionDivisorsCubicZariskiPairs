#FROM sagemath/sagemath:9.0
FROM sagemathinc/cocalc:latest

# Make sure the contents of the repository is in ${HOME}
COPY --chown=sage:sage . /home/sage
WORKDIR "/home/sage/"
