FROM sagemath/sagemath:8.7

RUN sage --pip install jupyterlab rise

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
