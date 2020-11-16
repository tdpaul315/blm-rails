class ChangeDateColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column :protests, :date, :string
  end
end
