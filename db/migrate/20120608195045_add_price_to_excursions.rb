class AddPriceToExcursions < ActiveRecord::Migration
  def change
    add_column :excursions, :price, :integer

  end
end
