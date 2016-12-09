class ChangeNameproperty < ActiveRecord::Migration
  def change
    change_column :toys, :name, :string, unique: true, null: false
  end
end
