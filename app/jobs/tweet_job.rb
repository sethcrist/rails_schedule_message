class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    binding.irb
    return if tweet.published?

    # Rescheduled a tweet to a future date
    return if tweet.publish_at > Time.current

    tweet.publish_to_twitter!
  end
end
