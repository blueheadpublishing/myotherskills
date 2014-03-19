MyOtherSkills::Application.routes.draw do



  resources :skills

  devise_for :users, :controllers => { :registrations => :registrations }
  devise_for :admins

  get '/token' => 'home#token', as: :token

  get '/admins/manage' => 'admins#manage', as: :manage

  get '/dashboard' => 'dashboard#index', as: :dashboard

  get '/u/:username' =>  'users#show', as: :user_profile
 
  resources :home, only: :index
  resources :admins


  authenticated :user do
    root :to => "skills#index", as: :authenticated_root
  end

  root :to => "home#index"



end
