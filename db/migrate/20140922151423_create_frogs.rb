class CreateFrogs < ActiveRecord::Migration
  # code goes here
  def change
    add_column :frogs, :name, :string
    add_column :frogs, :color, :string
    add_column :frogs, :pond_id, :integer
  end
end
