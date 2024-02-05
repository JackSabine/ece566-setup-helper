sudo apt-get update \
  && sudo apt-get clean \
  && sudo apt-get install -y --no-install-recommends ssh \
      build-essential \
      gcc \
      g++ \
      gdb \
      cmake \
      rsync \
      tar \
      python3 \
      python3-pip \
      zlib1g-dev \
      bison \
      libbison-dev \
      flex \
      libfl-dev \
      libzstd-dev \
      libcurl4-openssl-dev \
      libedit-dev \
   && sudo apt-get clean


# LLVM
sudo apt-get install -y --no-install-recommends libllvm-17-ocaml-dev libllvm17 llvm-17 llvm-17-dev llvm-17-doc llvm-17-examples llvm-17-runtime && sudo apt-get clean
# Clang and co
sudo apt-get install -y --no-install-recommends clang-17 clang-tools-17 clang-17-doc libclang-common-17-dev libclang-17-dev libclang1-17 clang-format-17 python3-clang-17 clangd-17 clang-tidy-17 && sudo apt-get clean
# compiler-rt
sudo apt-get install -y libclang-rt-17-dev && sudo apt-get clean
# polly
sudo apt-get install -y --no-install-recommends libpolly-17-dev && sudo apt-get clean
# libfuzzer
sudo apt-get install -y --no-install-recommends libfuzzer-17-dev && sudo apt-get clean
# lldb
sudo apt-get install -y --no-install-recommends  lldb-17 && sudo apt-get clean
# lld (linker)
sudo apt-get install -y --no-install-recommends lld-17 && sudo apt-get clean
# libc++
sudo apt-get install -y --no-install-recommends libc++-17-dev libc++abi-17-dev && sudo apt-get clean
# OpenMP
sudo apt-get install -y --no-install-recommends  libomp-17-dev && sudo apt-get clean
# libclc
sudo apt-get install -y --no-install-recommends libclc-17-dev && sudo apt-get clean
# libunwind
sudo apt-get install -y --no-install-recommends  libunwind-17-dev && sudo apt-get clean
# mlir
sudo apt-get install -y --no-install-recommends libmlir-17-dev mlir-17-tools && sudo apt-get clean
# bolt - comment out - doesn't work on apple silicon
# sudo apt-get install -y --no-install-recommends libbolt-17-dev bolt-17 && sudo apt-get clean
# flang
sudo apt-get install -y --no-install-recommends flang-17 && sudo apt-get clean
# wasm support
sudo apt-get install -y --no-install-recommends libclang-rt-17-dev-wasm32 libclang-rt-17-dev-wasm64 libc++-17-dev-wasm32 libc++abi-17-dev-wasm32 libclang-rt-17-dev-wasm32 libclang-rt-17-dev-wasm64 && sudo apt-get clean


sudo apt-get install -y time \
    && sudo apt-get clean