class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :weapons, :type, :type_id
  end
end
