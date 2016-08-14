class Member < ActiveRecord::Base
  belongs_to :user

  def self.member_id(current_user_id)
    member = Member.select('id').where("user_id = #{current_user_id}").first
    if member
      member.id
    else
      false
    end
  end
end
