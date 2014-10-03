class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :what
      t.text :what_more
      t.string :image
      t.datetime :when

      t.timestamps
    end
  end
end
