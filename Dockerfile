# 使用官方的 Python 3.10 基础镜像
#FROM ubuntu:22.04
FROM python:3.10.0
# 将当前目录下的文件复制到镜像中的 /app 目录
COPY . /app

# 设置工作目录
WORKDIR /app

# 安装依赖包?
RUN  pip install -r requirements.txt && pip install transformers==4.33.0 

# 定义容器启动时运行的命令
CMD ["python", "api.py"]