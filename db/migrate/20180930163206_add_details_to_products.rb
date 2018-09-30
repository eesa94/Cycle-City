class AddDetailsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :start, :string
    add_column :products, :finish, :string
  end
end
