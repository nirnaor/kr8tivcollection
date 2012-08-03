class AddMetalColorCdAndMetalColorWeightToJewel < ActiveRecord::Migration
  def change
    add_column :jewels, :metal_color_cd, :integer
    add_column :jewels, :metal_weight_cd, :integer
    add_column :jewels, :clarity_cd, :integer
    add_column :jewels, :cut_cd, :integer
  end
end
