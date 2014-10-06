class ChangeWebsiteToUrlInRealtors < ActiveRecord::Migration
  def change
  	rename_column :realtors, :website, :url
  end
end
