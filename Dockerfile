FROM knowengdev/base_image:09_01_2016
MAINTAINER Jing Ge <jingge2@illinois.edu>

ENV SRC_LOC /home

# Clone from github
RUN git clone https://username:password@github.com/KnowEnG-Research/GeneSet_Characterization_Pipeline.git ${SRC_LOC}

RUN cd ${SRC_LOC} && \
    rm -rf build input_data test docs && \
    rm Dockerfile README.md

# Set up working directory
WORKDIR ${SRC_LOC} 
