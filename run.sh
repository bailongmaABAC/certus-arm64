git submodule init
git submodule update
export KBUILD_BUILD_USER="RzaIX"
export KBUILD_BUILD_HOST="picasso09"
export PATH="$(pwd)/clang/bin:$PATH"
    make -j$(nproc --all) O=out ARCH=arm64 certus_defconfig
    make -j$(nproc --all) ARCH=arm64 O=out \
                          CC=clang \
                          CROSS_COMPILE=aarch64-linux-gnu- \
                          CROSS_COMPILE_ARM32=arm-linux-gnueabi-
