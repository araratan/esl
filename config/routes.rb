Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  get 'tabular'     => 'home#tabular'
  get 'subscriptions/subscribe'
  get 'books/book'
  root to:              "home#index"
end
