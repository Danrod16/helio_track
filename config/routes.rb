Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :clients
      resources :companies
      resources :deliverables
      resources :journeys
      resources :projects
      resources :project_journeys
      resources :steps
      resources :step_templates
      resources :templates
      resources :tickets

      root to: "users#index"
    end

  resources :projects
    

  devise_for :users do 
    root to: "devise/sessions#new"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
