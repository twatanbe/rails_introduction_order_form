class CreateOrderProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :order_products, comment: '注文情報(商品明細)' do |t|
      t.references :order, null: false, foreign_key: { on_delete: :cascade, on_delete: :cascade }, comment: '注文情報'
      t.references :product, null: false, foreign_key: { on_delete: :restrict, on_delete: :restrict }, comment: '商品マスタ'
      t.integer :quantity, null: false, default: 1, comment: '数量'

      t.timestamps
    end
  end
end
