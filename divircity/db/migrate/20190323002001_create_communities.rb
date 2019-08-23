class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      t.string :profile_image
      t.string :name, :default => ""
      t.string :description, :default => ""
      t.integer :privacy_type, :default => 0
      t.string :viewed_by, array: true, :default => []
      t.string :members, array: true, :default => []
      t.string :features, array: true, :default => []
      t.string :location
      t.string :beacon
      t.string :creator, :default => ""
      t.string :admins, array: true, :default => []
      t.string :ambassadors, array: true, :default => []
      t.string :current_events, array: true, :default => []
      t.string :past_events, array: true, :default => []
      t.string :feed, array: true, :default => []
      t.string :tags, array: true, :default => []
      t.string :category
      t.string :address, :default => ""
      t.boolean :allow_member_post_to_feed, :default => false
      t.boolean :allow_member_post_to_events, :default => false

      t.timestamps
    end
  end
end
