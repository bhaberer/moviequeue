Moviequeue::Application.routes.draw do
  devise_for :users

  resources :movies do
    member do
      get 'watch', to: 'movies#watch'
    end
  end

  resources :lists, path: '/queues' do
    member do
      get 'add', to: 'lists#add'
    end
  end

  get '/home', to: 'static#home', as: 'home'
  root to: 'static#index'
end
