class CreateFormResponses < ActiveRecord::Migration
  def change
    create_table :form_responses do |t|
      t.integer :page_id
      t.text :json

      t.timestamps
    end
  end
end
