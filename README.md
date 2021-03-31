# アプリ名
俺、何観たんだっけ？

# 概要
自分が観たテレビ番組の内容と感想をフォームに記述して投稿すると、トップ画面に投稿一覧が表示できるようになる。
新規投稿のフォームでは、番組の名前、日付、内容、感想、タグを記入することができ、過去に使ったタグを予測変換で表示させて、表示した予測変換をクリックするとタグが記入できるようになる。

# 制作背景
日頃から番組を観ているだけで、時間を無駄にしている感覚があった。
そんな状態を改善するために、番組を観てどう思ったのかアウトプットする場が欲しかった。
スマホのメモアプリで行なっていたが、もっと限定的にアウトプットを行いたかったため、アプリを作成しました。


【実装した内容】
・一覧表示させるデータを「番組タイトル、日付、要約、タグ」に変更して、タイトルをクリックすると「タイトル、内容、感想」が表示されるページに遷移する
・一目でどんなアプリなのかを把握できるように、アプリ概要を記述する。


# DEMO
・「新しい番組」をクリックすると、新規投稿ページに移動する
https://gyazo.com/f8bc4e4e90e12ce69e47ac8f395191df

・上部のタイトルをクリックすると、投稿一覧ページに戻る
https://gyazo.com/b3cda8cbb9d7c97f37cc5370d90601ae

・番組名をクリックすると、詳細ページに移動する


# 実装予定の内容
今後は表示される内容をシンプルにしたい。
シンプルにする方法として、表示される内容を簡潔にしたい。

・投稿を編集、削除できるボタンの設置。
・タグの予測転換を廃止。予測変換をタイトルに適用する。
・記述できる字数の制限

以上のように変更したい。


# テーブル設計

## programsテーブル

| Column  | Type   | Options     |
|---------|--------|------------ |
| date    | string | null: false |
| title   | string | null: false |
| fact    | text   | null: false |
| feeling | text   | null: false |
| summary | string | null: false |

### Association

- has_many :program_tags
- has_many :tags, through: program_tags

## tags テーブル

| Column | Type   | Options                        |
| ------ | ------ | ------------------------------ |
| name   | string | null: false , uniqueness: true |

### Association

- has_many :program_tags
- has_many :programs, through: program_tags

## program_tags テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| program | references | null: false, foreign_key: true |
| tag     | references | null: false, foreign_key: true |

### Association

- belongs_to :program
- belongs_to :tag