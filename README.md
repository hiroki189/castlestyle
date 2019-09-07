# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|e-mail|string|null:false|
|nickname|string|null:false,length:{maximum: 20}|
|content|text|null:false|

## Association
- has_many :castles, dependent: :destroy
- has_many :comments
- has_many :article

## castlesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, length:{maxmum: 40}|
|references|article_id|

## Association
- belongs_to :user
- has_many :comments, dependent: :destroy
- has_many :citadeles

## citadelsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|address|string|null: false|
|time|time|null: false|
|image|string|null: false|
|text|text|null: false|
|detail|text|null: false|
|map|string|null: false|
|castlename|reference|null: false, foreign_key: true|

## Association
- belongs_to :castle

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

#Castlestyle
日本の城を見ることができるサイトです。
#URL
http://13.114.92.47/