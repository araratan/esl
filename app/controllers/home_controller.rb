class HomeController < ApplicationController
  before_action :member_id

  def index
    if Subscription.subscribed?(current_user.id)
      redirect_to tabular_path
    end
  end

  def tabular
    my_lessons(member_id)
  end

  private

    def my_lessons(member_id)
      lessons = Lesson.select(:schedule_id).where(member_id: member_id)
      @member_id = member_id

      @lessons = Array.new
      lessons.each do |lesson|
        teacher = Teacher.find(lesson.schedule.teacher_id)
        @lessons << {
            fullname:       Teacher.fullname(lesson.schedule.teacher_id),
            schedule_date:  [lesson.schedule.schedule_date.strftime("%b. %d, %Y"), ([teacher.from_time.strftime("%H:%M"), teacher.to_time.strftime("%H:%M")].join(' - '))].join(' ')
        }
      end
      @lessons = @lessons.sort_by{ |h| h[:schedule_date].to_datetime}
    end
end
