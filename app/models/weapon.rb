class Weapon < ActiveRecord::Base
  attr_accessible :created_at, :damage, :firerate, :id, :image, :magazinesize, :name, :reloadtime, :type_id
  validates :damage, :firerate, :magazinesize, :name, :reloadtime, :presence => true
  
  belongs_to :type
end