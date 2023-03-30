Rails.application.routes.draw do
  resources :trains
  root "trains#show"
end
