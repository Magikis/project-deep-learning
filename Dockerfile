FROM anibali/pytorch:cuda-10.0

RUN conda install -y  anaconda \
 && conda clean -ya