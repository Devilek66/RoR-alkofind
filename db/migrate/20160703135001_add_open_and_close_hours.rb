class AddOpenAndCloseHours < ActiveRecord::Migration
  def change
    add_column :shops, :open_hour, :string
    add_column :shops, :close_hour, :string
  end
end
