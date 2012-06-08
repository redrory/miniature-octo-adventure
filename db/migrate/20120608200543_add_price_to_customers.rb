class AddPriceToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :price, :integer

  end
end
