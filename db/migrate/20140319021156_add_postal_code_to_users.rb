class AddPostalCodeToUsers < ActiveRecord::Migration
  def change
  	# Postal Code for Geo-location of users
  	add_column :users, :postal_code, :string
  end
end
