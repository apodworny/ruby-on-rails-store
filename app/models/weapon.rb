class Weapon < ActiveRecord::Base
  attr_accessible :created_at, :damage, :firerate, :id, :image, :magazinesize, :name, :reloadtime, :type
end
