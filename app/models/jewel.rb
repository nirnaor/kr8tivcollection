class Jewel < ActiveRecord::Base
  attr_accessible :description, :name, :weight, :category
  as_enum :category, :rings => 3, :necklaces => 2, :bracelets => 1,
    :earrings => 0
end
