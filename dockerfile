# ベースイメージの指定
FROM python:3.10.11

# 作業ディレクトリの設定
WORKDIR /lightgbm

# 依存関係のファイルをコピー
COPY requirements.txt .

# Pythonパッケージをインストール
RUN pip install --no-cache-dir -r requirements.txt

# すべてのファイルをコピー
COPY . .

# コマンドの実行
CMD ["python", "main.py"]