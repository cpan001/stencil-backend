class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :filename
      t.references :design, foreign_key: true

      t.timestamps
    end
  end
end
