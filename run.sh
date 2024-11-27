#git clone https://github.com/picasso09/clang-9.0.3-r353983c1.git clang
clang-version=r346389c aria2c -o clang.tar.gz https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/android10-release/clang-${clang-version}.tar.gz
tar -C ./clang -zxf clang.tar.gz
export KBUILD_BUILD_USER="RzaIX"
export KBUILD_BUILD_HOST="picasso09"
export PATH="$(pwd)/clang/bin:$PATH"
clang -v
    make -j$(nproc --all) O=out ARCH=arm64 certus_defconfig
    make -j$(nproc --all) ARCH=arm64 O=out \
                          CC=clang \
                          CROSS_COMPILE=aarch64-linux-gnu- \
                          CROSS_COMPILE_ARM32=arm-linux-gnueabi-
