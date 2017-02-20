class AddColumnIssuesToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :issues, array: true, default: []
  end
end
