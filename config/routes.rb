Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'apod', to:'image#show'
      get 'imagesearch', to:'imagesearch#index'
      post 'favorites', to:'favorites#create'
      get 'favorites', to:'favorites#index'
    end
  end
end
