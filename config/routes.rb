Rails.application.routes.draw do

  root :to => 'sections#index'

  resources :chapters do
    resources :sections
  end

  resources :sections do
    resources :lessons
  end

end
