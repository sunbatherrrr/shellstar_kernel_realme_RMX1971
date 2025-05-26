#!/bin/bash
export KBUILD_BUILD_USER=sunbatherrrr
export KBUILD_BUILD_HOST=Deafheaven
echo $KBUILD_BUILD_USER
echo $KBUILD_BUILD_HOST

make    CC=/workspace/voting-app/clang-12/bin/clang O=out ARCH=arm64 KharaMe_defconfig
make    CC=/workspace/voting-app/clang-12/bin/clang ARCH=arm64 O=out -j$(nproc --all) \
            HEADER_ARCH=arm64 \
            SUBARCH=arm64 \
            CXX=c++ \
            AR=llvm-ar \
            NM=llvm-nm \
            OBJDUMP=llvm-objdump \
            STRIP=llvm-strip \
            CROSS_COMPILE=aarch64-linux-gnu- \
            CROSS_COMPILE_ARM32=arm-linux-gnueabi- \
            CLANG_TRIPLE=aarch64-linux-gnu-