# テーブル設計

## User テーブル

| Column         | Type   | Options                   |
| -------------- | ------ | ------------------------- |
| nickname       | string | null: false               |
| email          | string | null: false, unique: true |
| password       | string | null: false               |
|first_name      | string | null: false               |
|last_name       | string | null: false               |
|first_name_kana | string | null: false               |
|last_name_kana  | string | null: false               |
| birthday       | string | null: false               |

### Associations


## Items テーブル

| Column          | Type       | Options                 |
| --------------- | ---------- | ----------------------- |
| name            | string     | null: false             |
| text            | string     | null: false             |
| category        | string     | null: false             |
| status          | string     | null: false             |
| delivory_charge | string     | null: false             |
| area            | string     | null: false             |
| ship_data       | string     | null: false             |
| price           | string     | null: false             |
| user_id         | references | null: false, foreign_key: true |