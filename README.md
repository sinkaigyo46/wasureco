## アプリケーション名
わすレコ
## アプリケーション概要
趣味の活動内容と活動時間を記録するカレンダーアプリ
## URL
https://wasureco.onrender.com/
## テスト用アカウント
・Basic認証パスワード：0000  
・Basic認証ID：almin  
・メールアドレス：1@a  
・パスワード：111111
## 利用方法
### 趣味投稿
1.トップページのヘッダーからユーザー新規登録を行う  
2.投稿ボタンから趣味の日付、ジャンル、時間、コメントを入力し投稿する  
### 投稿編集、削除
1.投稿された趣味のジャンルボタンから投稿詳細画面に遷移  
2.編集ボタンから投稿内容の編集を行う  
3.削除ボタンを押すと投稿内容を削除  
## アプリケーションを作成した背景
学習や筋トレ等、一つの項目に特化した記録アプリは多く存在しますが、自分が記録したい複数の項目を管理できるアプリがなかった事がきっかけです。一つのアプリに集約する事で、アプリを複数開かなくて良くなる、アプリ毎に操作方法を変えなくて良くなる等の利点があるので、管理がしやすく、時間の短縮になると考えました。
以上の考えから、カレンダー形式で趣味の活動内容や、月ごとの活動時間を計測できるアプリを開発することにしました。  
## 洗い出した要件
要件定義シート  https://docs.google.com/spreadsheets/d/1pv8J6L6ywq4Wp7xUjUuWfCEyhQ-wUMVvH3Hf6eko_1A/edit?usp=sharing  
## 使用例
[![Image from Gyazo](https://i.gyazo.com/0db71f5558bb173913ea35d315814133.png)](https://gyazo.com/0db71f5558bb173913ea35d315814133)
[![Image from Gyazo](https://i.gyazo.com/b5f056fcadc6999cc054041e941c3605.png)](https://gyazo.com/b5f056fcadc6999cc054041e941c3605)

## 実装予定の機能
・他ユーザーと記録をシェアできる機能  
・SNS認証でのログイン機能
## データベース設計
[![Image from Gyazo](https://i.gyazo.com/9dd4ea4bc14cfe4f54a5e5d22d0fb7b8.png)](https://gyazo.com/9dd4ea4bc14cfe4f54a5e5d22d0fb7b8)
## 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/d4c97615b685eab4f931dffd004c3be9.png)](https://gyazo.com/d4c97615b685eab4f931dffd004c3be9)
## 開発環境
### 開発言語
・HTML/CSS  
・Ruby  
### DB
・MySQL  
・PostgreSQL
### フレームワーク
・Ruby on Rails  
・Bootstrap
## 工夫したポイント
・使いたくなる見た目を意識して、趣味のラベル、ボタンのアニメーション等を実装  
・いつ、何を、どのように、どれくらい行ったのか、トップページで直ぐに確認できる機能  
・投稿とカレンダーの日付を連動させて表示させる機能  
・趣味毎の合計時間を月単位で表示する機能    
・ユーザビリティを考え、複雑な操作を必要とせず、直感的で分かりやすい仕様設計