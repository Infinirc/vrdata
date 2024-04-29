#!/bin/bash

# 安装必要的包
echo "Installing Streamlit..."
pip install streamlit

# 创建配置目录
echo "Setting up Streamlit config..."
mkdir -p ~/.streamlit

# 写入凭证
cat > ~/.streamlit/credentials.toml <<EOL
[general]
email = "your-email@example.com"
EOL

# 写入服务器设置
cat > ~/.streamlit/config.toml <<EOL
[server]
headless = true
enableCORS = false
port = \$PORT
EOL

echo "Starting Streamlit..."
# 启动 Streamlit 应用
streamlit run app.py
