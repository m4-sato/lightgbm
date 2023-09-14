# ベースイメージの指定
FROM python:3.10.11

# 作業ディレクトリの設定
WORKDIR /lightgbm

# 依存関係のファイルをコピー
COPY requirements.txt .

# Pythonパッケージをインストール
RUN pip install --no-cache-dir -r requirements.txt

# 仮想環境を作成
RUN python -m venv venv

# 仮想環境をアクティベート
ENV PATH="venv\bin\activate:$PATH"

# すべてのファイルをコピー
COPY . .

# コマンドの実行
CMD ["python", "chapter2.py"]