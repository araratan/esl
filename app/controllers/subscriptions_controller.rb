class SubscriptionsController < ApplicationController
  def subscribe
    if member_id
      Subscription.create!(member_id: member_id, lesson_item_per_day: params[:detail])
      redirect_to tabular_path
    else
      # add error here that user is not yet a member
    end
  end
end
