class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :twitter_account

  validates :body, length: {minimum: 1, maximum: 280 }
  validate :publish_at, presence: true

  after_initialize do
    self.publish_at ||= 14.hour.from_now
  end

  def published?
    tweet_id?
  end
end
