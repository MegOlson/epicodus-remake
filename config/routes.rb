Rails.application.routes.draw do

  root :to => 'sections#index'


  resources :sections do
    resources :lessons
  end
end
