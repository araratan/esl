class SubscriptionsController < ApplicationController
  def subscribe
    if member_id
      Subscription.create!(member_id: member_id, lesson_item_per_day: params[:detail])
    end
    redirect_to tabular_path
  end
end
