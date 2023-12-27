git submodule init
git submodule update
export KBUILD_BUILD_USER="RzaIX"
export KBUILD_BUILD_HOST="picasso09"
# export PATH="$(pwd)/pepek/bin:$PATH"
    make -j$(nproc --all) O=out ARCH=arm certusarm_defconfig
    make -j$(nproc --all) ARCH=arm O=out \
                          CROSS_COMPILE=arm-linux-gnueabi- \
                          CROSS_COMPILE_ARM32=arm-linux-gnueabi-
