FROM anibali/pytorch:cuda-10.0

RUN conda install -y -c anaconda \
 && conda clean -ya