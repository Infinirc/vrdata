#!/bin/bash

# 安装必要的包
echo "Installing Streamlit..."
pip install streamlit

# 创建配置目录
echo "Setting up Streamlit config..."
mkdir -p ~/.streamlit

# 写入凭证
echo "[general]
email = \"your-email@example.com\"
" > ~/.streamlit/credentials.toml

# 写入服务器设置
echo "[server]
headless = true
enableCORS = false
port = \$PORT
" > ~/.streamlit/config.toml

echo "Configuration files created."

# 显示配置文件内容（用于调试）
echo "Contents of credentials.toml:"
cat ~/.streamlit/credentials.toml
echo "Contents of config.toml:"
cat ~/.streamlit/config.toml

# 启动 Streamlit 应用
echo "Starting Streamlit..."
streamlit run app.py
