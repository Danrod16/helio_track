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
  
  resources :projects, except: [:index] do
    resources :project_journeys, only: [:create, :destroy]
  end

  resources :journeys do
    resources :steps, only: :show
  end

  resources :company do
    root to: "projects#index"
  end
  
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
