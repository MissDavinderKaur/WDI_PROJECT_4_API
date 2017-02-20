class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.integer :owner_id
      t.text :title
      t.string :category

      t.timestamps
    end
  end
end
