Nonsmoking::Application.routes.draw do

  # This line mounts Forem's routes at /forums by default.
  # This means, any requests to the /forums URL of your application will go to Forem::ForumsController#index.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Forem relies on it being the default of "forem"
  mount Forem::Engine, :at => '/forums'

  devise_for :users

  resources :news_items
  resources :diaries do
    member do
      post :next_state
      post :smoking_index
      post :smoking_dependency
      post :fagerstrom
      post :reset_state
    end
    collection do
      get :all
    end
  end
  resources :states, only: [:index, :show]
  resources :comments, only: [:create]

  namespace 'pages' do
    get :home
    get :info
  end

  root to: 'pages#home'
end
