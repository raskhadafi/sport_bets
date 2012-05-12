SportBets::Application.routes.draw do
  resources :participants
  resources :groups, only: [:index] do
    resources :group_bets
  end
  resources :matches
  resources :group_bets
  root :to => 'groups#index'
end
