class Shout < ActiveRecord::Base
  delegate :username, to: :user
  belongs_to :user

  validates :content, presence: true
end
