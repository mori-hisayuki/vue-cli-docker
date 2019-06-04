
## Dockerコマンド

Containerのビルド
```
docker build -t veu_js_cli .
```

Containerの実行

- dockerを通してプロジェクトを作成する

```
docker run --name veu_js_container -it -p 8080:8080 -v $PWD:/home veu_js_cli
```

- 再度Container内で作業する

```
docker start veu_js_container
docker exec -it veu_js_container sh
```

|オプション等|意味|
|---|---|
|-p|ポートの受け渡し ホストのポート:コンテナのポート|
|--name|コンテナに名前をつける|
|-it|STDINを常に開いてttyを割り当てる|
|-v|共有フォルダ ホスト:コンテナ|
|$PWD|現在のパスを出力してくれる|

docker exec -it veu_js_cli /bin/ash
