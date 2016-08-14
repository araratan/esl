require 'rails_helper'

describe Subscription do
  before(:each) do
    @user_id = 1
  end

  it "check if member has subscribe" do
    subscribe = Subscription.subscribed?(@user_id)
    expect(subscribe).to be_falsey
  end
end
