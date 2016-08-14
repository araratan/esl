class Subscription < ActiveRecord::Base
  belongs_to :member

  def self.subscribed?(user_id)
    # Check if member already subscribe
    member = Member.find_by_user_id(user_id)
    self.exists?(member_id: member.id)
  end

  def self.subscription_per_day(member_id)
    Subscription.select('lesson_item_per_day').where("member_id = #{member_id}").first.lesson_item_per_day
  end
end
