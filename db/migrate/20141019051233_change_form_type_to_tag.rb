class ChangeFormTypeToTag < ActiveRecord::Migration
  def change
  	rename_column :form_items, :type, :tagra
  end
end
