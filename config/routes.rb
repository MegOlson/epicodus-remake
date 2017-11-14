Rails.application.routes.draw do

  root :to => 'chapters#index'

  resources :chapters do
    resources :sections
  end

  resources :sections do
    resources :lessons
  end

end
