Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: "registrations", omniauth_callbacks: "callbacks" }

  resources :movements 




  
  root to: "movements#home"

  get '/:anything', to: "application#wrongpage"
end
