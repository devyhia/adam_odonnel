class AddLinkToPage < ActiveRecord::Migration
  def change
  	add_column :page_templates, :link, :string
  end
end
