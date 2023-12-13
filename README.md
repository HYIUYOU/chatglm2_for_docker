# How to use

### 0. 创建docker环境

```shell
docker build -t chatglm .
```

### 1. 启动docker环境

```shell
docker run -p 8000:8000 -p 8001:8001 --name chatglm chatglm
```

**docker 启动容器**

```shell
docker start chatglm
```

**docker 停止容器**

```shell
docker stop chatglm
```



### 2. 发送请求

**PS: 一定要在linux环境里发送请求**
```shell
curl -X POST "http://127.0.0.1:8000" -H 'Content-Type: application/json' -d '{"prompt": "你好", "history": []}' 
```
**response:**

```
{"response":"你好👋！我是人工智能助手 ChatGLM2-6B，很高兴见到你，欢迎问我任何问题。","history":[["你好","你好👋！我是人工智能助手 ChatGLM2-6B，很高兴见到你，欢迎问我任何问题。"]],"status":200,"time":"2023-12-13 14:46:28"}%  
```

**并行发送请求：**
```shell
python apirequest.py
```