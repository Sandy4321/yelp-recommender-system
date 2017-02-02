FROM continuumio/anaconda3

RUN apt-get update --fix-missing && apt-get install -yq
RUN conda install pandas=0.19.2
RUN conda install numpy=1.11.3
RUN conda install matplotlib=1.5.1

EXPOSE 8888

RUN mkdir $HOME/nyker