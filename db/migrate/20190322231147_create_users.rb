class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :profile_image
      t.string :cover_photo
      t.string :first_name, :default => ""
      t.string :last_name, :default => ""
      t.string :username, :default => ""
      t.string :email, :default => ""
      t.string :phone
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.integer :state
      t.integer :zip
      t.string :about_me
      t.string :notifications, array: true, :default => []
      t.string :communities, array: true, :default => []
      t.string :communities_invited, array: true, :default => []
      t.string :events_going, array: true, :default => []
      t.string :events_interested, array: true, :default => []
      t.string :events_not_going, array: true, :default => []
      t.string :ambassadors, array: true, :default => []
      t.string :ambassadors_pending, array: true, :default => []
      t.string :ambassador_to, array: true, :default => []
      t.string :ambassador_communities, array: true, :default => []
      t.string :ambassador_communities_disabled, array: true, :default => []
      t.string :ambassador_requests, array: true, :default => []
      t.integer :privacy_type
      t.string :tags, array: true, :default => []
      t.string :viewed_by, array: true, :default => []
      t.string :user_visits, array: true, :default => []
      t.string :community_visits, array: true, :default => []
      t.string :connections, array: true, :default => []
      t.string :removed_connections, array: true, :default => []
      t.string :profile_update_dates, array: true, :default => []

      t.timestamps
    end
  end
end
