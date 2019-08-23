# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|e-mail|string|null:false|
|nickname|string|null:false,length:{maximum: 20}|

## Association
- has_many :castles, dependent: :destroy
- has_many :comments
- has_many :article

## castlesテーブル
|name|string|null: false, length:{maxmum: 40}|
|references|article_id|

## Association
- belongs_to :user
- has_many :comments, dependent: :destroy

## commentsテーブル
|comment|string|
|user_id|references|null: false, foreign_key: true|
|castle_id|references|null: flase, foreign_key: true|

## Association
- belongs_to :user
- belongs_to :castle

## active_strageテーブル

## Association


## ariclesテーブル
|name|string|null: false|


## Association
- has_many :castles