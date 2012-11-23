class ChangeTable < ActiveRecord::Migration
  def change
    change_table :weapons do |t|
      t.remove :type_id
      t.integer :type_id
    end
  end
end
