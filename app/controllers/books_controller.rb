class BooksController < ApplicationController
  before_action :member_id
  def book
    schedule_date = params[:schedule_date]
    subcripted_cnt = Lesson.validate_daily_subscription(member_id, schedule_date)
    subscription = Subscription.subscription_per_day(member_id)
    schedule_id = params[:schedule_id]

    unless subscription.to_i == subcripted_cnt.to_i
      Lesson.create!(member_id: member_id, schedule_id: schedule_id)
    end

    redirect_to root_path
  end
end
