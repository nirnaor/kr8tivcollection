class AddAttachmentBirthImage1BirthImage2ToJewels < ActiveRecord::Migration
  def self.up
    add_column :jewels, :birth_image1_file_name, :string
    add_column :jewels, :birth_image1_content_type, :string
    add_column :jewels, :birth_image1_file_size, :integer
    add_column :jewels, :birth_image1_updated_at, :datetime
    add_column :jewels, :birth_image2_file_name, :string
    add_column :jewels, :birth_image2_content_type, :string
    add_column :jewels, :birth_image2_file_size, :integer
    add_column :jewels, :birth_image2_updated_at, :datetime
  end

  def self.down
    remove_column :jewels, :birth_image1_file_name
    remove_column :jewels, :birth_image1_content_type
    remove_column :jewels, :birth_image1_file_size
    remove_column :jewels, :birth_image1_updated_at
    remove_column :jewels, :birth_image2_file_name
    remove_column :jewels, :birth_image2_content_type
    remove_column :jewels, :birth_image2_file_size
    remove_column :jewels, :birth_image2_updated_at
  end
end
