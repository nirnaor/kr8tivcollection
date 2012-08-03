class AddCategoryCdToJewel < ActiveRecord::Migration
  def change
    add_column :jewels, :category_cd, :integer
  end
end
