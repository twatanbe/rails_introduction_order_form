# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ApplicationRecord.transaction do
  Order.delete_all
  PaymentMethod.delete_all
  InflowSource.delete_all
  Product.delete_all

  PaymentMethod.create(id: 1, name: 'クレジットカード')
  PaymentMethod.create(id: 2, name: '銀行振込')
  PaymentMethod.create(id: 3, name: '代引き')
  PaymentMethod.create(id: 4, name: 'コンビニ払い')
  PaymentMethod.create(id: 5, name: '郵便為替')

  InflowSource.create(id: 1, name: '検索エンジン')
  InflowSource.create(id: 2, name: '知人の紹介')
  InflowSource.create(id: 3, name: '新聞・雑誌')
  InflowSource.create(id: 4, name: '情報サイト')
  InflowSource.create(id: 5, name: 'その他')

  Product.create(id: 1, name: 'フィリピン産バナナ', price: 100)
  Product.create(id: 2, name: '栃木県産いちご', price: 300)
  Product.create(id: 3, name: '和歌山県産みかん', price: 500)
  Product.create(id: 4, name: '青森県産りんご', price: 700)
  Product.create(id: 5, name: '台湾産パイナップル', price: 900)
  Product.create(id: 6, name: '宮崎県産マンゴー', price: 1200)
end
