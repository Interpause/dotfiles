#! /bin/sh
export LLVM_IAS=1
export LLVM=1
export CC=clang
export LD=ld.lld
export AR=llvm-ar
export NM=llvm-nm
export OBJCOPY=llvm-objcopy
export OBJDUMP=llvm-objdump
export READELF=llvm-readelf
export RANLIB=llvm-ranlib
export STRIP=llvm-strip
export ZSTD_CLEVEL=19
export XZ_OPT="-9e"
export GZIP="-9"
export GZIP_OPT="-9"
export BZIP="-9"
export BZIP2="-9"

export KCFLAGS=" -O3 -pipe -march=native -mtune=native "
export KCPPFLAGS=" -O3 -pipe -march=native -mtune=native "

# Workaround til clang 18 works
# export PATH=/usr/lib/llvm/17/bin:$PATH
