class CreateDealUsers < ActiveRecord::Migration
  def change
    create_table :deal_users do |t|
      t.integer :deal_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
