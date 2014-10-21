class CreateFollowRelationships < ActiveRecord::Migration
  def change
    create_table :follow_relationships do |t|
      t.references :follower
      t.references :followed_user

      t.timestamps
    end
  end
end
