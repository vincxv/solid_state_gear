class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.text :description
      t.decimal :price
      t.boolean :featured

      t.timestamps
    end
  end
end
