class CreatePonds < ActiveRecord::Migration
  # code goes here
  add_column :ponds, :name, :string 
  add_column :ponds, :water_type, :string
end
