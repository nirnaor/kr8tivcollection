class Jewel < ActiveRecord::Base
  attr_accessible :description, :name, :weight, :category,
    :metal_color, :metal_weight, :clarity, :cut, :primary_image,
    :birth_image1, :birth_image2, :birth_image3, :birth_image4,
    :birth_image5, :birth_image6

  validates_presence_of :description, :name, :weight, :category,
    :metal_color, :metal_weight, :clarity, :cut

  validates_format_of :name,:description , :with => /[A-Za-z]/, 
    :message => "only english letters are allowed here"

  validates_numericality_of :weight, :greater_than => 0

  as_enum :category, :rings => 3, :necklaces => 2, :bracelets => 1,
    :earrings => 0
  as_enum :metal_color, :gold=> 2, :silver => 1, :platinum => 0
  as_enum :metal_weight, 14=> 14, 18 => 18, 22 => 22
  as_enum :clarity, :flawless => 7, :ws1 => 6, :ws2 => 5,
    :vs1 => 4, :vs2 => 3, :si1 => 2, :si2 => 1, :si3 => 0 
  as_enum :cut, :round => 7, :oval => 6, :peer => 5,
    :heart => 4, :asher => 3, :emrald => 2, :marquise => 1, :radiant => 0 

  has_attached_file :primary_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  has_attached_file :birth_image1, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :birth_image2, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :birth_image3, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :birth_image4, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :birth_image5, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_attached_file :birth_image6, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
