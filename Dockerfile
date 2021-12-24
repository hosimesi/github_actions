FROM python:3.7

COPY requirements.txt requirements.txt

# コンテナ内で必要なパッケージをインストール
RUN pip install --upgrade pip --no-cache-dir
RUN pip install -r requirements.txt --no-cache-dir

ENV LANG 'ja_JP.UTF-8'
WORKDIR /root/src
EXPOSE 80