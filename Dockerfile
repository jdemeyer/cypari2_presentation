FROM sagemath/sagemath:8.4

RUN sage --pip install jupyterlab rise
RUN sage --sh -c "jupyter-nbextension install rise --py --sys-prefix"

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
