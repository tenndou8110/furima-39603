# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## usersテーブル

|Column            |Type              |Options                |
|------------------|------------------|-----------------------|
|nickname          |string            |null:false,unique: true|
|email             |string            |null:false,unique: true|
|encrypted_password|string            |null:false,unique: true|
|last_name         |string            |null:false             |
|first_name        |string            |null:false             |
|last_name_kana    |string            |null:false             |
|first_name_kana   |string            |null:false             |
|date of birth     |date              |null:false             |

- has_many :items
- has_many :orders

## itemsテーブル

|Column            |Type              |Options                     |
|------------------|------------------|----------------------------|
|user              |references        |null:false,foreign_key: true|
|name              |string            |null:false                  |
|description       |text              |null:false                  |
|category_id       |integer           |null:false                  |
|item_condition_id |integer           |null:false                  |
|prefectune_id     |integer           |null:false                  |
|shipping_cost_id  |integer           |null:false                  |
|price             |integer           |null:false                  |

- belongs_to :users
- has_one    :orders

## ordersテーブル

|Column            |Type              |Options                     |
|------------------|------------------|----------------------------|
|user              |references        |foreign_key :true           |
item               |references        |foreign_key :true           |

- belongs_to :users
- belongs_to :items
- has_one    :payments

## Shipping address

|Column            |Type              |Options                     |
|------------------|------------------|----------------------------|
|orders            |references        |null:false,foreign_key: true|
|post code         |string            |null:false                  |
|prefecture_id     |integer           |null:false                  |
|city              |string            |null:false                  |
|blook             |string            |null:false                  |
|building          |string            |                            |
|phone_namber      |string            |null:false                  |

- belong_to :orders