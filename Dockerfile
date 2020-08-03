FROM lycantropos/cmake

WORKDIR /lm

RUN apt update \
    && apt install git -y \
    && git clone https://github.com/kpu/kenlm.git
RUN apt install build-essential libboost-system-dev libboost-thread-dev libboost-program-options-dev libboost-test-dev libeigen3-dev zlib1g-dev libbz2-dev liblzma-dev -y
RUN cd kenlm \
    && mkdir -p build \
    && cd build \
    && cmake .. \
    && make -j 4

ENTRYPOINT ["/lm/kenlm/build/bin/lmplz"]

