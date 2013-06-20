Scheduler::Application.routes.draw do

  resources :sessions, only: [:index]
  resources :tracks, only: [:index, :show]
  resources :conferences, only: [:index]
  get "/conferences/:slug", to: "conferences#show"

end
