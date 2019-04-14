Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'apod', to:'image#show'
      post 'favorites', to:'favorites#create'
    end
  end
end
