FROM quay.io/pypa/manylinux2014_x86_64
ENV PATH="${PATH}:/root/.local/bin:/opt/python/cp36-cp36m/bin:/opt/python/cp37-cp37m/bin:/opt/python/cp38-cp38/bin:/opt/python/cp39-cp39/bin:/opt/python/cp310-cp310/bin:/opt/rh/devtoolset-2/root/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/python/cp35-cp35m/bin:/opt/python/cp36-cp36m/bin:/opt/python/cp37-cp37m/bin:/opt/python/cp38-cp38/bin:/opt/python/cp39-cp39:/opt/python/cp310-cp310"
ENV LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/local/lib/"

RUN git clone --depth=1 https://github.com/NoUnique/mecab-ko.git mecab && \
    cd mecab/mecab && \
    ./configure --enable-utf8-only && \
    make && \
    make install
