class AddTaglineToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :tagline, :string
  end
end
