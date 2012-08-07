class AddShowInHomePageToJewel < ActiveRecord::Migration
  def change
    add_column :jewels, :show_in_home_page, :boolean
  end
end
