SportBets::Application.routes.draw do
  resources :participants
  resources :groups, only: [:index, :show] do
    resources :group_bets, expect: [:show]
    resources :teams, only: [:index]

    member do
      post :finish
    end
  end
  resources :matches
  resources :group_bets
  root :to => 'groups#index'
end
