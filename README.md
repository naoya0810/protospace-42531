# README

## usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| name               | string | null: false |
| profile            | text   | null: false |
| occupation         | text   | null: false |
| position           | text   | null: false |


## prototypesテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| title              | string | null: false |
| catch_copy         | text   | null: false |
| concept            | text   | null: false |     
| user               | references | null: false, foreign_key: true |


## commentsテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| content            | text   | null: false |
| prototype          | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |