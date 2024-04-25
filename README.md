README

■サービス概要

５０音に対応する指文字の読み取り能力を養うことができるサービスです。

自分の好きな単語を登録して、指文字を読み取れるようになることができます。

新しい単語を自分で登録できるので、楽しく学べます。

■ このサービスへの思い・作りたい理由

大学4年生の時に手話の授業を受け、その魅力に魅了されました。

ある日、手話の検定を受けることを思い立ち、手話の読み取り力を向上させることを決意しました。

手話単語を覚えるためには映像教材がありますが、指文字に特化した学習教材はなかなか見つからず学習に苦労しました。

そういった状況下で、数少ない指文字関連の動画やwebサイトから読み取りを学習していましたが、

興味のない単語で学習することはモチベーションを維持することが非常に難しかったです。

このような経験から、手話学習者が指文字を習得しやすい環境を提供したいという思いでこのアプリを開発したいと思いました。

■ ユーザー層について

ユーザー層は、手話を勉強し始めた初学者です。なぜならば、手話を学習し始めた方が最初に触れる内容が指文字だからです。

■サービスの利用イメージ

指文字の読み取りができるようになる。もし検定を受けるのであれば、指文字の読み取り能力は必須なので試験対策にもなります。

■ ユーザーの獲得について

Twitterで宣伝する。自分に手話を教えてくれた教授のところにアプリを宣伝して気に入ってもらえたら受講生に宣伝してもらう。

■ サービスの差別化ポイント・推しポイント

このサービスの最大の魅力は、「自分の好きな単語で指文字の読み取りができる」という点です。

既存のサイトでは、登録されている単語で指文字の読み取りを学習できますが、

登録されている単語数が少ないため、読み取り能力を鍛えるには不十分かもしれません。

さらに、自分自身の興味のない単語で学習することはモチベーションの維持が難しいです。

私が作成したいアプリでは、自分の好きな単語を無制限に追加して学ぶことができるため、飽きずに続けることができます。

■ 機能候補

| MVP                                    | 本リリース                             | 
| -------------------------------------- | -------------------------------------- | 
| 会員登録                               | 単語の学習機能                         | 
| ログイン                               | 表示される単語のスピードを調整する機能 | 
| 入力した日本語が指文字に変換される機能 | 自分で作った単語を共有する機能         | 
| お気に入り登録・解除                   | アプリを使った日を記録する機能         | 
| 登録した単語一覧                       |                                        | 

■ 機能の実装方針予定

  ### 入力した日本語が指文字に変換される機能

  * 複数枚の指文字画像が自動的に切り替わるCSSアニメーションを実装します。

  * 指文字のデータは、自分で50音指文字を表現し撮影したものを使用します。

  ### 単語の学習機能

  * 単語の学習機能登録した単語がランダムに表示されるようにしたいです。単語帳みたいなイメージです。
