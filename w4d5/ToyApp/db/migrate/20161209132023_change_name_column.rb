class ChangeNameColumn < ActiveRecord::Migration
  def change
    remove_column :toys, :name
    add_column :toys, :name, :string, unique: true
  end
end
