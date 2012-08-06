class AddAttachmentBirthImage3BirthImage4BirthImage5BirthImage6ToJewels < ActiveRecord::Migration
  def self.up
    add_column :jewels, :birth_image3_file_name, :string
    add_column :jewels, :birth_image3_content_type, :string
    add_column :jewels, :birth_image3_file_size, :integer
    add_column :jewels, :birth_image3_updated_at, :datetime
    add_column :jewels, :birth_image4_file_name, :string
    add_column :jewels, :birth_image4_content_type, :string
    add_column :jewels, :birth_image4_file_size, :integer
    add_column :jewels, :birth_image4_updated_at, :datetime
    add_column :jewels, :birth_image5_file_name, :string
    add_column :jewels, :birth_image5_content_type, :string
    add_column :jewels, :birth_image5_file_size, :integer
    add_column :jewels, :birth_image5_updated_at, :datetime
    add_column :jewels, :birth_image6_file_name, :string
    add_column :jewels, :birth_image6_content_type, :string
    add_column :jewels, :birth_image6_file_size, :integer
    add_column :jewels, :birth_image6_updated_at, :datetime
  end

  def self.down
    remove_column :jewels, :birth_image3_file_name
    remove_column :jewels, :birth_image3_content_type
    remove_column :jewels, :birth_image3_file_size
    remove_column :jewels, :birth_image3_updated_at
    remove_column :jewels, :birth_image4_file_name
    remove_column :jewels, :birth_image4_content_type
    remove_column :jewels, :birth_image4_file_size
    remove_column :jewels, :birth_image4_updated_at
    remove_column :jewels, :birth_image5_file_name
    remove_column :jewels, :birth_image5_content_type
    remove_column :jewels, :birth_image5_file_size
    remove_column :jewels, :birth_image5_updated_at
    remove_column :jewels, :birth_image6_file_name
    remove_column :jewels, :birth_image6_content_type
    remove_column :jewels, :birth_image6_file_size
    remove_column :jewels, :birth_image6_updated_at
  end
end
