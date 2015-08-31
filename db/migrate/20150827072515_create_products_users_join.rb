class CreateProductsUsersJoin < ActiveRecord::Migration
  def change
    create_table :products_users_joins do |t|
    	t.column 'product_id', :integer
    
    	t.column 'user_id', :integer
    
    end
  end
end
