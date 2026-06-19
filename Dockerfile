FROM python:3.11-slim

# 作業ディレクトリの作成
WORKDIR /app

# 依存関係ファイルをコピーしてインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 残りのソースコードをコピー
COPY . .

# ボットを実行（main.py の部分は実際のファイル名に合わせてください）
CMD ["python", "2.py"]