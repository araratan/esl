class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_save :user_should_be_a_member

  def user_should_be_a_member
    if Member.find_by_user_id(self.id).nil?
      Member.create!(user_id: self.id)
    end
  end
end
