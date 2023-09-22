class Hobby < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user

  def self.ransackable_associations(_auth_object = nil)
    %w[genre user]
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[user_id genre_id time]
  end

  validates :date, :time, :genre_id, presence: true
end
