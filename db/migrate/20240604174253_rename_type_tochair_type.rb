class RenameTypeTochairType < ActiveRecord::Migration[7.1]
  def change
    rename_column :chairs ,:type ,:chairType
  end
end
