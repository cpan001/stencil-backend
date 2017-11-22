class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.references :design, foreign_key: true
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end
