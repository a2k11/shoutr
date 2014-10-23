class MakeShoutContentPolymorphic < ActiveRecord::Migration
  def change
    add_column :shouts, :content_type, :string
    add_column :shouts, :content_id, :integer

    Shout.all.each do |shout|
      text_shout = TextShout.create!(body: shout.content)
      shout.content_type = "TextShout"
      shout.content_id = text_shout.id
      shout.save!
    end

    remove_column :shouts, :content

  end
end
