class CreateCategoriesProductsJoin < ActiveRecord::Migration
  def change
    create_table :categories_products_joins do |t|
    	t.column 'category_id', :integer
    	t.column 'product_id', :integer
    end
  end
end
