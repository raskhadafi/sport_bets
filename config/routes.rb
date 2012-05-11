SportBets::Application.routes.draw do
  resources :participants
  resources :groups, only: [:index]
  root :to => 'participants#index'
end
