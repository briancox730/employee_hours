class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name, null: false
    end
    add_index :businesses, :name, unique: true
  end
end
