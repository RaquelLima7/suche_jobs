Rails.application.routes.draw do
  devise_for :companies
  get '/vacancies' => 'vacancies#index', as: :company_root
  resources :applicants
  resources :vacancies
  resources :companies
  devise_for :users
  # root to: 'pages#vacancies'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
