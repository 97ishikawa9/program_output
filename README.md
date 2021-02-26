# テーブル設計

## programsテーブル

| Column  | Type   | Options     |
|---------|--------|------------ |
| date    | string | null: false |
| title   | string | null: false |
| fact    |        | null: false |
| feeling |        | null: false |

### Association

- has_many :program_tags
- has_many :tags, through: program_tags

## tags テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

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