### 顧客情報管理システム

## 概要
呉服を想定した顧客情報管理アプリ
顧客情報の登録、顧客情報の検索、顧客の寸法管理が出来る

## URL:

## テスト要アカウント
Username:呉服太郎
Password:example1
## 利用方法
ログイン後顧客登録をし、検索機能から、名前、電話番号での検索と、担当者IDを使った、リストアップ検索ができる。
## 目指した課題解決方法
呉服業界では、古いシステムが多くまた、退職者が多いため、定着しない原因である販売手法の確率のため。
## 洗い出した要件
すべてのページはログインしているユーザーのみが利用できる

トップページ
・顧客登録、検索、寸法登録に遷移できる
・ログアウト出来るボタンが有る

顧客登録画面
・顧客情報を入力後、登録ボタンを押すことで登録することが出来る。
・戻るボタンからトップページにもどることができる

顧客検索画面
・担当IDから顧客をリストアップ検索ができる
・電話番号、名字かなから顧客検索ができる
・検索結果として、名前、住所、電話番号、担当名がわかる
## 実装した機能についての説明
・スタッフの登録は、店舗ではなく本部で行うことを想定しているため、登録フォームは未実装
・顧客登録は誕生日や電話番号、建物名、詳細、性別がなくても登録できる。
・登録を押した際、必要な情報が抜けているとエラー文がでる。

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
|Column             |Type      |Options                    |
|-------------------|----------|---------------------------|
|height             |integer   |                           |
|bust               |integer   |                           |
|hip                |integer   |                           |
|sleeve_length      |integer   |                           |
|user               |references|null:false,foreign_key:true|
|kimono_yuki        |integer   |                           |
|kimono_height      |integer   |                           |
|kimono_maehaba     |integer   |                           |
|kimono_usirohaba   |integer   |                           |
|kimono_kurikosi    |integer   |                           |
|kimono_katahaba    |integer   |                           |
|kimono_sodehaba    |integer   |                           |
|kimono_sodetuke    |integer   |                           |
|kimono_miyatu      |integer   |                           |
|kimono_okumihaba   |integer   |                           |
|kimono_aiduma      |integer   |                           |
|kimono_sodeguti    |integer   |                           |
|kimono_marumi      |integer   |                           |
|kimono_tumasita    |integer   |                           |
|kimono_erihaba     |integer   |                           |
|kimono_kataaki     |integer   |                           |
|kimono_erikata     |string    |                           |
|kimono_detail      |text      |                           |

## ローカルでの動作方法