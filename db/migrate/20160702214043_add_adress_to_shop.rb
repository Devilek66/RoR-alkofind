class AddAdressToShop < ActiveRecord::Migration
  def change
    add_column :shops, :street, :string
    add_column :shops, :number, :integer
  end
end
