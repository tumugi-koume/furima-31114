# テーブル設計

## User テーブル

| Column          | Type    | Options                   |
| --------------  | ------- | ------------------------- |
| nickname        | string  | null: false               |
| email           | string  | null: false, unique: true |
| password        | string  | null: false               |
| first_name      | string  | null: false               |
| last_name       | string  | null: false               |
| first_name_kana | string  | null: false               |
| last_name_kana  | string  | null: false               |
| birthday_year   | integer | null: false               |
| birthday_month  | integer | null: false               |
| birthday_day    | integer | null: false               |

### Association

 - has_many :items
 - has_many :orders
 - has_one :address


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

### Association

 - belongs_to :user
 - has_one :order


## Order テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| card_number     | integer    | null: false, foreign_key: true |
| exp_month       | integer    | null: false                    |
| exp_year        | integer    | null: false                    |
| approval_code   | integer    | null: false                    |
| user_id         | references | null: false, foreign_key: true |
| items_id        | references | null: false, foreign_key: true |

### Association

 - belongs_to :user
 - belongs_to :item
 - has_one :address



## Address テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| postal_code     | integer    | null: false                    |
| region          | string     | null: false                    |
| city            | string     | null: false                    |
| street          | string     | null: false                    |
| building        | string     |                                |
| phone           | string     | null: false, unique: true      |
| user_id         | references | null: false, foreign_key: true |

### Associations

 - belongs_to :user
 - belongs_to :order
