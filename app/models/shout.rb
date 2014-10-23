class Shout < ActiveRecord::Base
  delegate :username, to: :user
  belongs_to :user
  belongs_to :content, polymorphic: true

  has_many :likes

  validates :content, presence: true
end
