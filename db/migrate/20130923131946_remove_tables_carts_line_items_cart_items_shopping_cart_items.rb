class RemoveTablesCartsLineItemsCartItemsShoppingCartItems < ActiveRecord::Migration
  def up
  	drop_table :carts
  	drop_table :line_items
  	drop_table :cart_items
  	drop_table :shopping_cart_items


  end

  def down
  end
end
