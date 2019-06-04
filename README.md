
## Dockerコマンド

Containerのビルド
```
docker build -t veu_js_cli .
```

Containerの実行

- dockerを通してプロジェクトを作成する

```
docker run -v $PWD:/app --rm -it veu_js_cli create app
```

|オプション等|意味|
|---|---|
|-p|ポートの受け渡し ホストのポート:コンテナのポート|
|--name|コンテナに名前をつける|
|-it|STDINを常に開いてttyを割り当てる|
|-v|共有フォルダ ホスト:コンテナ|
|$PWD|現在のパスを出力してくれる|

docker exec -it veu_js_cli /bin/ash
