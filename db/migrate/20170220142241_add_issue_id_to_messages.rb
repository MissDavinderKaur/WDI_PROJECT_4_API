class AddIssueIdToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :issue_id, :integer
  end
end
