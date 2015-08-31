class AddColumnsToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :user_id, :integer
  	add_column :projects, :category_id, :integer
  	

  end
end
