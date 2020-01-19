Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  GmailAlerts::Application.routes.draw do
    root to: 'sessions#new'
    resources :sessions, only: :index
    get "/auth/:provider/callback" => 'sessions#create'
  end
end
