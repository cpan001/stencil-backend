class CreateProjectDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :project_designs do |t|
      t.references :project, foreign_key: true
      t.references :design, foreign_key: true

      t.timestamps
    end
  end
end
