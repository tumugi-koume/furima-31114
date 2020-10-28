# テーブル設計

## User テーブル

| Column          | Type   | Options                   |
| --------------  | ------ | ------------------------- |
| nickname        | string | null: false               |
| email           | string | null: false, unique: true |
| password        | string | null: false               |
| first_name      | string | null: false               |
| last_name       | string | null: false               |
| first_name_kana | string | null: false               |
| last_name_kana  | string | null: false               |
| birthday_year   | integer | null: false               |
| birthday_month  | integer | null: false               |
| birthday_day    | integer | null: false               |

### Associations


## Items テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| name            | string     | null: false                    |
| text            | text       | null: false                    |
| category        | string     | null: false                    |
| status          | string     | null: false                    |
| delivery_charge | string     | null: false                    |
| area            | string     | null: false                    |
| ship_data       | string     | null: false                    |
| price           | integer    | null: false                    |
| user_id         | references | null: false, foreign_key: true |



## Order テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| card_number     | integer    | null: false, foreign_key: true |
| exp_month       | integer    | null: false                    |
| exp_year        | integer    | null: false                    |
| approval_code   | integer    | null: false                    |
| user_id         | references | null: false, foreign_key: true |
| items_id        | references | null: false, foreign_key: true |