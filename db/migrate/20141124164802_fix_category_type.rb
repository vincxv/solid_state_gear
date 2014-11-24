class FixCategoryType < ActiveRecord::Migration
  def change
    change_column :products, :category_id, :integer
  end
end
