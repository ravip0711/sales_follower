class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.text :description
      t.references :store, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
