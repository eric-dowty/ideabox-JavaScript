Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :idea, except: [:new, :edit]
      resources :quality, only: [:index]
    end
  end

  get "/home", to: "idea#home" 

  root "idea#home"

  mount MagicLamp::Genie, at: '/magic_lamp' if defined?(MagicLamp)
end
