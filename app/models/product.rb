class Product < ApplicationRecord
  # ・モデルのファイル内にメソッドを記述することで、モデルクラスのインスタンスに対してメソッドを追加できます。
  # この場合、product.rbにメソッドを書けば、Productクラスのインスタンスである@productに対して、@product.add_taxの様にメソッドを使うことができます。
  def add_tax
    self.price = ( price * 1.08 ).round
    # ・クラス内でセッターを使う場合（priceに値を代入する場合）は、selfを省略することができません。そのためself.price = という記述の仕方になります。ゲッターを使う場合（priceの値を参照する場合）はselfは省略可能のため、price * 1.08 という書き方ができます。
  end
end


