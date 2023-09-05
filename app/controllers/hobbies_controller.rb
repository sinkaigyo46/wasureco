class HobbiesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show, :edit, :destroy]
  before_action :set_hobby, only: [:show, :edit, :update, :destroy]

  def index
    @hobby = Hobby.all.order(date: :asc)
    return unless user_signed_in?

    @genre_total_times_by_year_and_month = calculate_user_genre_total_times_by_year_and_month(current_user.hobbies)
  end

  def new
    @hobby = Hobby.new
  end

  def create
    @hobby = Hobby.new(hobby_params)
    if @hobby.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @hobby = Hobby.find(params[:id])
  end

  def edit
  end

  def update
    if @hobby.update(hobby_params)
      redirect_to hobby_path(@hobby)
    else
      render action: :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @hobby.destroy
    redirect_to root_path
  end

  private

  def hobby_params
    params.require(:hobby).permit(:genre_id, :activity, :date, :time).merge(user_id: current_user.id)
  end

  def set_hobby
    @hobby = Hobby.find(params[:id])
  end

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
