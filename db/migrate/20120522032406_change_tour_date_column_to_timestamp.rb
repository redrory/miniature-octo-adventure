class ChangeTourDateColumnToTimestamp < ActiveRecord::Migration
  def up
  	remove_column :customers, :tour_date
  	add_column :customers, :tour_date, :string
  end

  def down
  	remove_column :customers, :tour_date
  	add_column :customers, :tour_date, :date
  end
end
