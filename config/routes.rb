Nonsmoking::Application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  namespace 'pages' do
    %w{home info how material}.each { |action| get action }
  end
end
