ARG ARCH=amd64
FROM registry.oxen.rocks/lokinet-ci-debian-buster-base/${ARCH}
RUN apt-get -o=Dpkg::Use-Pty=0 -q install --no-install-recommends -y \
        automake \
        ccache \
        cmake \
        eatmydata \
        g++ \
        gdb \
        git \
        libboost-program-options-dev \
        libboost-serialization-dev \
        libboost-thread-dev \
        libcurl4-openssl-dev \
        libevent-dev \
        libgtest-dev \
        libhidapi-dev \
        libjemalloc-dev \
        libminiupnpc-dev \
        libreadline-dev \
        libsodium-dev \
        libsqlite3-dev \
        libssl-dev \
        libsystemd-dev \
        libtool \
        libunbound-dev \
        libunwind8-dev \
        libusb-1.0.0-dev \
        libuv1-dev \
        libzmq3-dev \
        lsb-release \
        make \
        nettle-dev \
        ninja-build \
        openssh-client \
        patch \
        pkg-config \
        pybind11-dev \
        python3-dev \
        python3-pip \
        python3-pybind11 \
        python3-pytest \
        python3-setuptools \
        qttools5-dev \
        xz-utils
