class Renametable < ActiveRecord::Migration
  def change
    rename_table :person, :people
  end
end
