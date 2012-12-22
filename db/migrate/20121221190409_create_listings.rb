class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.integer :distance
      t.decimal :price , :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
