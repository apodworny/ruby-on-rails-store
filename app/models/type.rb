class Type < ActiveRecord::Base
  attr_accessible :description, :name, :id
  
  has_many :weapons
end
