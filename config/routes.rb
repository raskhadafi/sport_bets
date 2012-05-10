SportBets::Application.routes.draw do
  resources :participants
  root :to => 'welcome#index'
end
