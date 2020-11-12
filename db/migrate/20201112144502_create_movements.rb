class CreateMovements < ActiveRecord::Migration[6.0]
  def change
    create_table :movements do |t|
      t.string :name
      t.integer :yr_started
      t.text :description
    end
  end
end
