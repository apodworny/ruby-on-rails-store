class Type < ActiveRecord::Base
  attr_accessible :description, :name
  
  has_many :weapons
end
