SportBets::Application.routes.draw do
  resources :participants
  resources :groups, only: [:index, :show] do
    resources :group_bets
    resources :teams, only: [:index]
  end
  resources :matches
  resources :group_bets
  root :to => 'groups#index'
end
