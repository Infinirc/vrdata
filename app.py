import streamlit as st
import pandas as pd

def main():
    st.title("CSV 文件上傳與顯示應用")

    # 文件上傳區域
    uploaded_file = st.file_uploader("請選擇一個 CSV 文件", type="csv")
    if uploaded_file is not None:
        # 讀取 CSV 文件
        df = pd.read_csv(uploaded_file)
        
        # 顯示數據框架內容
        st.write("顯示 CSV 文件內容:")
        st.write(df)

        # 顯示描述性統計
        st.write("數據描述性統計:")
        st.write(df.describe())

if __name__ == "__main__":
    main()
