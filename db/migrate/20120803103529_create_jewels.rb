class CreateJewels < ActiveRecord::Migration
  def change
    create_table :jewels do |t|
      t.string :name
      t.string :description
      t.integer :weight

      t.timestamps
    end
  end
end
