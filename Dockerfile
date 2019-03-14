FROM anibali/pytorch:cuda-10.0

RUN conda install -y -c numpy \
    scipy \
    jupyter \
    jupyterlab \
 && conda clean -ya