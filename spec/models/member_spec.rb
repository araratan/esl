require 'spec_helper'

describe Member do
  it "should return member_id" do
    current_user_id = 1
    member = Member.member_id(current_user_id)
    if member
      member.should eq(1)
    else
      false
    end
  end
end
