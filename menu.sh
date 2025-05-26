make CC=/workspace/voting-app/clang-12/bin/clang ARCH=arm64 O=out KharaMe_defconfig nconfig

mv out/.config arch/arm64/configs/KharaMe_defconfig