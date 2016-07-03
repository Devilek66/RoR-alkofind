class AddIdTownToShop < ActiveRecord::Migration
  def change
    add_column :shops, :town_id, :integer
  end
end
