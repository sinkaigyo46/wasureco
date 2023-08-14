class Hobby < ApplicationRecord
  belongs_to :user

  validates :time, :activity, :date, presence: true
  validates :genre_id, presence: true, numericality: { other_than: 1, message: "を選択してください" } 
end
