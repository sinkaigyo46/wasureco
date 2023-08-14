class CreateHobbies < ActiveRecord::Migration[7.0]
  def change
    create_table :hobbies do |t|
      t.integer        :genre_id,     null: false 
      t.text           :activity,     null: false 
      t.time           :time,         null: false 
      t.references     :user,         null: false,  foreign_key: true 
      t.timestamps
    end
  end
end
