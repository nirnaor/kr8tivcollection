class AddCategoryCodeToJewel < ActiveRecord::Migration
  def change
    add_column :jewels, :category_code, :integer
  end
end
