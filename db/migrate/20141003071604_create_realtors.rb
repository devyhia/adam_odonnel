class CreateRealtors < ActiveRecord::Migration
  def change
    create_table :realtors do |t|
      t.string :image
      t.string :title
      t.string :more
      t.string :website

      t.timestamps
    end
  end
end
