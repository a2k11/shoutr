class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :content, null: false
      t.belongs_to :user, index: true, null: false
      t.timestamps
    end
  end
end
