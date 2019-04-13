Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'apod', to:'image#show'
    end
  end
end
