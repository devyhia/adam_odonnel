class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :name
      t.string :email
      t.date :birthdate
      t.integer :zip
      t.string :country
      t.boolean :has_mortgage_news
      t.boolean :has_interest_rate_updates
      t.boolean :has_special_events

      t.timestamps
    end
  end
end
