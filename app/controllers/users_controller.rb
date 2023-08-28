class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_total_times_by_year_and_month = calculate_user_genre_total_times_by_year_and_month(@user.hobbies)
  end

  private

  def calculate_user_genre_total_times_by_year_and_month(hobbies)
    genre_total_times_by_year_and_month = Hash.new do |hash, year|
      hash[year] = Hash.new do |inner_hash, month|
        inner_hash[month] = {}
      end
    end

    hobbies.order(date: :desc).each do |hobby|  # 日付順にソートして取得
      year = hobby.date.year
      month = hobby.date.month
      genre_id = hobby.genre_id
      genre_total_times_by_year_and_month[year][month][genre_id] ||= { total_time: 0, genre: Genre.find(genre_id) }
      genre_total_times_by_year_and_month[year][month][genre_id][:total_time] += hobby.time
    end

    genre_total_times_by_year_and_month
  end
end
