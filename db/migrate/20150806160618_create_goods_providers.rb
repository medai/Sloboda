class CreateGoodsProviders < ActiveRecord::Migration
  def change
    create_table :goods_providers do |t|
      t.references :good, index: true, foreign_key: true
      t.references :provider, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
