class FixTagraTypeInFormItems < ActiveRecord::Migration
  def change
  	rename_column :form_items, :tagra, :tag
  end
end
