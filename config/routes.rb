Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :idea, except: [:new, :edit]
    end
  end

  get "/home", to: "idea#home" 

  root "idea#home"

end
