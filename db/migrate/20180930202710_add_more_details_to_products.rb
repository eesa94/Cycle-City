class AddMoreDetailsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :distance, :integer
    add_column :products, :duration, :integer
    add_column :products, :difficulty, :string
  end
end
