class RenameMainDesignFromDesigns < ActiveRecord::Migration[5.1]
  def change
    rename_column :connections, :maindesign_id, :design_id
    rename_column :connections, :subdesign_id, :relateddesign_id
  end
end
