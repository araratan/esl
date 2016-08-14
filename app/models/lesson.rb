class Lesson < ActiveRecord::Base
  belongs_to :member
  belongs_to :schedule

  def self.validate_daily_subscription(member_id, schedule_date)
    lesson_sched_id_list = Lesson.where(member_id: member_id).pluck(:schedule_id)
    sched_id_list = Schedule.where(schedule_date: schedule_date.to_datetime.beginning_of_day..schedule_date.to_datetime.end_of_day).pluck(:id)
    subscripted = lesson_sched_id_list & sched_id_list
    subscripted.count
  end
end
