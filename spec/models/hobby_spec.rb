require 'rails_helper'

RSpec.describe Hobby, type: :model do
  before do
    @hobby = FactoryBot.build(:hobby)
  end

  describe '趣味投稿' do
    context '趣味投稿ができる場合' do
      it '全ての項目が出力されていれば保存できる' do
        expect(@hobby).to be_valid
      end
      it 'コメントが空でも投稿できる' do
        @hobby.activity = ''
        expect(@hobby).to be_valid
      end
    end

    context '趣味投稿ができない場合' do
      it '日付が空では登録できない' do
        @hobby.date = ''
        @hobby.valid?
        expect(@hobby.errors.full_messages).to include('日付を入力してください')
      end
      it 'ジャンルが空では登録できない' do
        @hobby.genre_id = ''
        @hobby.valid?
        expect(@hobby.errors.full_messages).to include('ジャンルを入力してください')
      end
      it '時間が空では登録できない' do
        @hobby.time = ''
        @hobby.valid?
        expect(@hobby.errors.full_messages).to include('時間を入力してください')
      end
      it 'ユーザーが紐付いていないと登録できない' do
        @hobby.user = nil
        @hobby.valid?
        expect(@hobby.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
