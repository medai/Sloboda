class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.integer :code
      t.string :name
      t.float :weight

      t.timestamps null: false
    end
  end
end
