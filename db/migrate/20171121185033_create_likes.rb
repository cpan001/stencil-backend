class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.references :design, foreign_key: true
      t.integer :liker_id

      t.timestamps
    end
  end
end
