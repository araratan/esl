require 'rails_helper'

describe User do
  describe 'after_save' do
    before(:each) do
      @member = Member.new(user_id: 1)
    end

    it 'autofills the country_code' do
      expect {
        @member.save
      }.to change(Member, :count).by(1)
    end
  end
end
