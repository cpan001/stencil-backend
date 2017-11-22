class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.string :title
      t.text :url
      t.text :code
      t.text :description
      t.boolean :original, default: false
      t.integer :views, default: 0
      t.integer :creator_id

      t.timestamps
    end
  end
end
