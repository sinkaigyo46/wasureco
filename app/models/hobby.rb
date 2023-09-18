class Hobby < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user


  def self.ransackable_associations(auth_object = nil)
    ["genre", "user"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["user_id", "genre_id","time"]
  end

  validates :date, :time, :genre_id, presence: true
end
