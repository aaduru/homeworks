class Removecolumn1 < ActiveRecord::Migration
  def change
    remove_column :houses, :people_id
  end
end
