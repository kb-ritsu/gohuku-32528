### 顧客情報管理システム

## 概要
呉服を想定した顧客情報管理アプリ
顧客情報の登録、顧客情報の検索、顧客の寸法管理が出来る

## URL:

## テスト要アカウント

## 利用方法

## 目指した課題解決方法

## 洗い出した要件

## 実装した機能についての説明

## DB設計
# usersテーブル
|Column              |Type      |Options                    |
|--------------------|----------|---------------------------|
|first_name          |string    |null:false                 |
|last_name           |string    |null:false                 |
|first_name_katakana |string    |null:false                 |
|last_name_katakana  |string    |null:false                 |
|birthday            |date      |                           |
|phone_number        |string    |                           |
|telephone_number    |string    |                           |
|address_number      |string    |null:false                 |
|city                |string    |null:false                 |
|address             |string    |null:false                 |
|building            |string    |                           |
|staff               |references|null:false,foreign_key:true|
|detail              |text      |                           |
|gender              |integer   |                           |

# staffテーブル
|Column            |Type      |Options                 |
|------------------|----------|------------------------|
|name              |string    |null:false              |
|encrypted_password|string    |null:false              |

# sizeテーブル
|Column         |Type      |Options                    |
|---------------|----------|---------------------------|
|height         |integer   |                           |
|bust           |integer   |                           |
|hip            |integer   |                           |
|sleeve_length  |integer   |                           |
|user           |references|null:false,foreign_key:true|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|
|

## ローカルでの動作方法