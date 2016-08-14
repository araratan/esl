class Schedule < ActiveRecord::Base
  belongs_to :teacher
  has_many :lessons
end
