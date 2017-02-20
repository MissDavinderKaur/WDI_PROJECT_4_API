class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :alias, :string
    add_column :users, :sector, :string
    add_column :users, :city, :string
  end
end
