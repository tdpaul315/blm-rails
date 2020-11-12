class CreateProtests < ActiveRecord::Migration[6.0]
  def change
    create_table :protests do |t|
      t.string :name
      t.string :location
      t.datetime :date
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :movement, null: false, foreign_key: true
    end
  end
end
