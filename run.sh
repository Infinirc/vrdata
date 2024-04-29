#!/bin/bash

# 安装必要的包
pip install streamlit

# 设置 Streamlit 的配置
mkdir -p ~/.streamlit

echo "\
[general]\n\
email = \"your-email@example.com\"\n\
" > ~/.streamlit/credentials.toml

echo "\
[server]\n\
headless = true\n\
enableCORS=false\n\
port = $PORT\n\
" > ~/.streamlit/config.toml

# 启动 Streamlit 应用
streamlit run your_streamlit_app.py
