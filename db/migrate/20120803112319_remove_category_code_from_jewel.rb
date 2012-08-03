class RemoveCategoryCodeFromJewel < ActiveRecord::Migration
  def up
    remove_column :jewels, :category_code
      end

  def down
    add_column :jewels, :category_code, :integer
  end
end
