class Renametable2 < ActiveRecord::Migration
  def change
    rename_table :house_tables, :house
  end
end
