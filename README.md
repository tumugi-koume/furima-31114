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
| birthday        | date    | null: false               |


### Association

 - has_many :items
 - has_many :orders


## Items テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| name               | string     | null: false                    |
| text               | text       | null: false                    |
| category_id        | integer    | null: false                    |
| status_id          | integer    | null: false                    |
| delivery_charge_id | integer    | null: false                    |
| area_id            | integer    | null: false                    |
| ship_data_id       | integer    | null: false                    |
| price              | integer    | null: false                    |
| user　　            | references | null: false, foreign_key: true |

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
