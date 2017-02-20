class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :issue_id
      t.integer :sender_id
      t.integer :receiver_id
      t.text :msg_text

      t.timestamps
    end
  end
end
