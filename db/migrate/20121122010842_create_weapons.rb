class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.integer :id
      t.string :name
      t.decimal :reloadtime
      t.decimal :firerate
      t.integer :magazinesize
      t.integer :damage
      t.string :type
      t.string :image
      t.datetime :created_at

      t.timestamps
    end
  end
end
