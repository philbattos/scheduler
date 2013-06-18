Scheduler::Application.routes.draw do

  resources :sessions, except: [:new, :edit]
  resources :tracks, except: [:new, :edit]

  resources :conferences, except: [:new, :edit, :show]
  get "/conferences/:slug", to: "conferences#show"

end
