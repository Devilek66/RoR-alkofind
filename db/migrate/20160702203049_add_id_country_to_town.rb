class AddIdCountryToTown < ActiveRecord::Migration
  def change
    add_column :towns, :country_id, :integer
  end
end
