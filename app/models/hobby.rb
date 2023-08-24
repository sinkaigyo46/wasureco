class Hobby < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user
  has_many :likes, dependent: :destroy

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  validates :date, :time, :genre_id, presence: true
end
