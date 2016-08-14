class Subscription < ActiveRecord::Base
  belongs_to :member

  def self.subscribed?(member_id)
    if self.find_by_member_id(member_id).nil?
      false
    else
      true
    end
  end

  def self.subscription_per_day(member_id)
    Subscription.select('lesson_item_per_day').where("member_id = #{member_id}").first.lesson_item_per_day
  end
end
