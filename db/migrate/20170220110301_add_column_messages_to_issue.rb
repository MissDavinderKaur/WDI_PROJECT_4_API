class AddColumnMessagesToIssue < ActiveRecord::Migration[5.0]
  def change
    add_reference :issues, :messages, foreign_key: true
  end
end
