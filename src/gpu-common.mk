NVCC:=nvcc

# 最初に通ったやつ
# GPU_PTX_ARCH:=compute_50

# RTX 4070 用
GPU_PTX_ARCH:=compute_86

# 最初に通ったやつ
# GPU_ARCHS?=sm_50,sm_61,sm_70

# RTX 4070 用
GPU_ARCHS?=sm_86

GPU_CFLAGS:=--gpu-code=$(GPU_ARCHS),$(GPU_PTX_ARCH) --gpu-architecture=$(GPU_PTX_ARCH)
CFLAGS_release:=--ptxas-options=-v $(GPU_CFLAGS) -O3 -Xcompiler "-Wall -Werror -fPIC -Wno-strict-aliasing"
CFLAGS_debug:=$(CFLAGS_release) -g
CFLAGS:=$(CFLAGS_$V)
