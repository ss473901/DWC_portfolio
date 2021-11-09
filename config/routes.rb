Rails.application.routes.draw do
  devise_for :users, skip: [:passwords,], controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }

  devise_for :proposers, skip: [:passwords,], controllers: {
    registrations: "proposer/registrations",
    sessions: "proposer/sessions"
  }

  namespace :user do
    resources :users
    resources :tasks
    resources :ideas
    resources :funs
  end

  namespace :proposer do
    resources :proposers
    resources :ideas
    resources :funs
  end

  end
