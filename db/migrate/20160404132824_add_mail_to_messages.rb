class AddMailToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :mail, :string
  end
end
