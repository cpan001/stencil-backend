class CreateCollaborations < ActiveRecord::Migration[5.1]
  def change
    create_table :collaborations do |t|
      t.references :project, foreign_key: true
      t.integer :collaborator_id

      t.timestamps
    end
  end
end
