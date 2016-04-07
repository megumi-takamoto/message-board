class AddStationToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :station, :string
  end
end
