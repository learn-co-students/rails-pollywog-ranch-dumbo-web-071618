class CreateTadpoles < ActiveRecord::Migration
  # code goes here
  add_column :tadpoles, :name, :string 
  add_column :tadpoles, :color, :string 
  add_column :tadpoles, :frog_id, :integer
end
