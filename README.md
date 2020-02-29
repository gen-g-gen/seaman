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
# SEAMAN アプリ概要
## 概要
サーファーによるサーファのための波情報サイト

## 可能なこと
各県のサーフポイントの情報を一括で確認することができる。

## 目的
波情報を検索するときに、ツイッタや、ライブカメラサイト、波情報サイト、気象予測サイトなどまたがって情報を
確認しているため、一括で、波の状況が確認できるアプリを作成する。

# SEAMAN DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|name|string|null: false|
|mail|string|null: false|
|password|string|null: false|
|confirm_password|string|null: false|
|name|string|null: false|
|prefecture|string|null: false|

### Association
- has_many :comments
- has_many_active_hash :prefecture
- has_many :messages

## pointテーブル
|Column|Type|Options|
|------|----|-------|
|point|text|null: false|
|info|text|---|
|prefecture_id|ref|null: false, foreign_key: true|
|user_id|ref|null: false, foreign_key: true|


### Association
- has_many :comments
- belongs_to_active_hash :prefecture

## messageテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|image|text|---|
|point_id|ref|null: false, foreign_key: true|
|user_id|ref|null: false, foreign_key: true|


### Association
- belongs_to :point
- belongs_to :user
- has_many :comments

## commentテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|image|text|---|
|message_id|ref|null: false, foreign_key: true|
|user_id|ref|null: false, foreign_key: true|


### Association
- belongs_to :user
- belongs_to :message





