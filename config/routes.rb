Rails.application.routes.draw do
  resources :bill_generations
  resources :addstocks do 
    post 'create_add_medicine'
  end
  resources :categories
  resources :medicines
  devise_for :users
  root to: "home#index"
  get 'home/generate_bill'
  get 'home/add_item'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
