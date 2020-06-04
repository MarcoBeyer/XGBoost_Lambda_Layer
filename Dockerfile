FROM lambci/lambda:build-python3.8
RUN yum install -y openssl-devel
RUN curl -L https://github.com/Kitware/CMake/releases/download/v3.17.2/cmake-3.17.2.tar.gz | tar zxv
RUN ./cmake-3.17.2/bootstrap
RUN make && make install
