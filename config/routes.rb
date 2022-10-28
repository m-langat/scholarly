Rails.application.routes.draw do
  resources :conference_subthemes
  resources :conference_themes
  resources :comments
  resources :papers
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
