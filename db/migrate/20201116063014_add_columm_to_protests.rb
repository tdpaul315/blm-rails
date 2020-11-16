class AddColummToProtests < ActiveRecord::Migration[6.0]
  def change
    add_column :protests, :certify, :boolean
  end
end
