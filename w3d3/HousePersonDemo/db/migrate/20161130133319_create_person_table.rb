class CreatePersonTable < ActiveRecord::Migration
  def change
    create_table :person do |t|
      t.string :name, null: false
      t.integer :house_id
      t.timestamps

    end
  end
end
