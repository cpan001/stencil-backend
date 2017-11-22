class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.integer :maindesign_id
      t.integer :subdesign_id

      t.timestamps
    end
  end
end
