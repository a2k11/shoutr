class Shout < ActiveRecord::Base
  delegate :username, to: :user
  belongs_to :user
  belongs_to :content, polymorphic: true

  validates :content, presence: true
end
