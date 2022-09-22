# 覚書
+ タグ追加: `hugo server -w`で再度サイトをビルドする必要あり。
+ descriptionかsummaryを使うかは各mdファイルの先頭部分で決定
+ auther pageを作るかどうかは部署で相談
+ 文献の概要欄に新たなタグを追加する場合は`blog-brief.html`に記述
-----
# ビルドについて
1. `hugo --cleanDestinationDir`を実行
1. docsの中身を全削除(古いファイルは全部消す)
1. publicの中身を全部コピーしてdocsへペースト
1. githubへアップロード
