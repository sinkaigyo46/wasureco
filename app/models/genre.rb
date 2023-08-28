class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '散歩', display_order:1 },
    { id: 2, name: '筋トレ', display_order:2 },
    { id: 3, name: 'プログラミング', display_order:3 },
    { id: 4, name: '読書', display_order:4 },
    { id: 5, name: 'サウナ', display_order:5 },
    { id: 6, name: 'スポーツ', display_order:6 },
    { id: 7, name: 'グルメ', display_order:7 },
    { id: 8, name: 'その他', display_order:8 }
  ]

  include ActiveHash::Associations
  has_many :articles
end
