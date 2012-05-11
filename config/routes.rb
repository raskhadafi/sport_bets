SportBets::Application.routes.draw do
  resources :participants
  root :to => 'participants#index'
end
