class CreateFormItems < ActiveRecord::Migration
  def change
    create_table :form_items do |t|
      t.string :name
      t.integer :type
      t.string :placeholder
      t.integer :page_id

      t.timestamps
    end

    add_column :page_templates, :page_type, :integer
  end
end
