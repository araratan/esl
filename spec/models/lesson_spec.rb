require 'rails_helper'

describe Lesson do
  before(:each) do
    @member_id = 1
    @schedule_date = "01-08-2016".to_datetime
  end
  it "should validate daily subcription per user" do
    expect(Lesson.validate_daily_subscription(@member_id, @schedule_date)).to eq(0)
  end

end
