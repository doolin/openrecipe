class FixTypeColumnName < ActiveRecord::Migration
  def change
    rename_column :ingredients, :type, :itype
  end
end
