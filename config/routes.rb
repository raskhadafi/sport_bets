SportBets::Application.routes.draw do
  resources :participants
  resources :groups, only: [:index, :show] do
    resources :group_bets, expect: [:show]
    resources :teams, only: [:index]
    resources :matches
    member do
      get :finish
    end
  end
  resources :group_bets
  resources :matches
  root :to => 'groups#index'
end
