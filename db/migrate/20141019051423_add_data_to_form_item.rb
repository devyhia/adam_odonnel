class AddDataToFormItem < ActiveRecord::Migration
  def change
  	add_column :form_items, :data, :string
  end
end
