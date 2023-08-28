FactoryBot.define do
  factory :hobby do
    date { 1998 - 0o3 - 21 }
    genre_id   { 2 }
    time       { 0.4 }
    activity   { '今日のコメント' }

    association :user
  end
end
