Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: "registrations", omniauth_callbacks: "callbacks" }

  resources :movements do   
    resources :protests
  end 


  root to: "movements#home"

  get '/:anything', to: 'application#error_page'
end
