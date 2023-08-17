## users テーブル

| Column                | Type   | Options                   |
| ------------------    | ------ | -----------               |
| name                  | string | null: false, unique: true |
| email                 | string | null: false, unique: true |
| encrypted_password    | string | null: false               |

### Association

- has_many :hobbies
- has_many :comments
- has_many :likes
<<<<<<< Updated upstream
- has_many :active_follows
=======
>>>>>>> Stashed changes
- has_many :followers
- has_many :followings


## hobbies テーブル

| Column           | Type        | Options     |
| ------           | ------      | ----------- |
| genre_id         | integer     | null: false |
| activity         | text        | null: false |
<<<<<<< Updated upstream
| time             | time        | null: false |
| user_id          | references  | null: false,  foreign_key: true |
| date             | date        | null: false |
### Association

- has_many   :comments
- has_many   :likes
- belongs_to :genre
- belongs_to :user
=======
| time             | integer     | null: false |
| user_id          | references  | null: false,  foreign_key: true |
### Association

- belongs_to :user
- has_many   :comments
- has_many   :likes
- belongs_to :genre
>>>>>>> Stashed changes

## comments テーブル

| Column          | Type       | Options                        |
| ------          | ---------- | ------------------------------ |
| comment         | string     | null: false                    |
| user_id         | references | null: false, foreign_key: true |
| hobby_id        | references | null: false, foreign_key: true |

### Association

- belongs_to :user_id
- belongs_to :hobby_id

## likes テーブル

| Column            | Type           | Options     |
| -------           | ----------     | ----------- |
| user_id           | references     | null: false, foreign_key: true |
| hobby_id          | references     | null: false, foreign_key: true |


### Association

- belongs_to :user_id
- belongs_to :hobby_id
<<<<<<< Updated upstream

##  follows テーブル

| Column                | Type           | Options     |
| -------               | ----------     | ----------- |
| follower_id           | references     |             |
| following_id          | references     |             |


### Association

- belongs_to :follower
- belongs_to :following
=======
>>>>>>> Stashed changes
