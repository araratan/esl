class Teacher < ActiveRecord::Base
  belongs_to :user
  has_many :schedules

  def self.fullname(id)
    user = self.find(id).user
    [user.firstname, user.lastname].join(' ')
  end
end
