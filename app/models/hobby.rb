class Hobby < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user


  validates :date, :time, :genre_id, presence: true
end
