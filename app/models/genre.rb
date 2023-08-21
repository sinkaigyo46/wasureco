class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '散歩' },
    { id: 2, name: '筋トレ' },
    { id: 3, name: 'プログラミング' },
    { id: 4, name: '読書' },
    { id: 5, name: 'サウナ' },
    { id: 6, name: 'スポーツ' },
    { id: 7, name: 'グルメ' },
    { id: 8, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :articles
end
