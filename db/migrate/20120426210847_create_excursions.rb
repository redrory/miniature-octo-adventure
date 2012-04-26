class CreateExcursions < ActiveRecord::Migration
  def change
    create_table :excursions do |t|
      t.string :name
      t.text :content
      t.string :photo
      t.string :location
      t.string :area

      t.timestamps
    end
  end
end
