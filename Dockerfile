FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-devel AS builder

ENV DEBIAN_FRONTEND=noninteractive
ENV TORCH_CUDA_ARCH_LIST="8.0+PTX"
ENV CUDA_HOME=/usr/local/cuda

# RUN apt update && \
#     apt install -y --no-install-recommends libglew-dev libassimp-dev libboost-all-dev libgtk-3-dev \
#     libopencv-dev libglfw3-dev libavdevice-dev libavcodec-dev libeigen3-dev libxxf86vm-dev \
#     libembree-dev wget && \
#     apt clean && rm -rf /var/lib/apt/lists/*

RUN apt update && \
    apt install -y --no-install-recommends libopencv-dev && \
    apt clean && rm -rf /var/lib/apt/lists/*

RUN apt update && \
    apt install -y --no-install-recommends tzdata git g++ wget && \
    apt clean && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
RUN git clone https://github.com/FunnyPocketBook/3dgs-mcmc.git --recursive && \
    git clone https://github.com/RongLiu-Leo/Gaussian-Splatting-Monitor.git

WORKDIR /workspace/3dgs-mcmc/src
RUN pip install plyfile tqdm tensorboard submodules/diff-gaussian-rasterization submodules/simple-knn/

# RUN pip install -r encoders/lseg_encoder/requirements.txt && \
#     pip install -e encoders/sam_encoder && \
#     pip install opencv-python pycocotools matplotlib onnxruntime onnx && \
#     pip install git+https://github.com/nerfstudio-project/gsplat.git@v0.1.10 && \
#     pip install git+https://github.com/zhanghang1989/PyTorch-Encoding/

# WORKDIR /workspace/Gaussian-Splatting-Monitor/SIBR_viewers/cmake/linux
# RUN sed -i 's/find_package(OpenCV 4\.5 REQUIRED)/find_package(OpenCV 4.2 REQUIRED)/g' dependencies.cmake && \
#     sed -i 's/find_package(embree 3\.0 )/find_package(EMBREE)/g' dependencies.cmake && \
#     mv Modules/FindEmbree.cmake Modules/FindEMBREE.cmake && \
#     sed -i 's/\bembree\b/embree3/g' ../../src/core/raycaster/CMakeLists.txt

# WORKDIR /workspace/Gaussian-Splatting-Monitor/SIBR_viewers
# RUN cmake -Bbuild . -DCMAKE_BUILD_TYPE=Release && \
#     cmake --build build -j$(nproc) --target install

FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-runtime

ENV DEBIAN_FRONTEND=noninteractive

# RUN apt update && \
#     apt install -y --no-install-recommends vim x11-apps xauth libglew-dev libassimp-dev libboost-all-dev \
#     libgtk-3-dev libopencv-dev libglfw3-dev libavdevice-dev libavcodec-dev libeigen3-dev \
#     libxxf86vm-dev libembree-dev software-properties-common && \
#     add-apt-repository ppa:kisak/kisak-mesa -y && \
#     apt update && apt -y upgrade && \
#     apt clean && rm -rf /var/lib/apt/lists/*

RUN apt update && \
    apt install -y --no-install-recommends vim software-properties-common && \
    apt update && apt -y upgrade && \
    apt clean && rm -rf /var/lib/apt/lists/*

COPY --from=builder /opt/conda /opt/conda

WORKDIR /workspace/3dgs-mcmc


CMD ["tail", "-f", "/dev/null"]