class CreateBusinessUsers < ActiveRecord::Migration
  def change
    create_table :business_users do |t|
      t.integer :business_id, null: false
      t.integer :user_id, null: false
    end
  end
end
