FROM jupyter/minimal-notebook:latest

USER root

RUN pip install jupyter_contrib_nbextensions && \
    jupyter contrib nbextension install --user && \
    git clone https://github.com/lambdalisue/jupyter-vim-binding /home/jovyan/.local/share/jupyter/nbextensions/vim_binding && \
    jupyter nbextension enable vim_binding/vim_binding

RUN pip install numpy pandas matplotlib

RUN mkdir -p /home/jovyan/.jupyter/custom/

COPY  ./notebooks/custom.js /home/jovyan/.jupyter/custom/

EXPOSE 10000
CMD ["bash"]
#CMD ["jupyter notebook --port 10000 --allow-root"]
