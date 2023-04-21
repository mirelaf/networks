Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "platforms#index"

  resources :platforms do
    resources :ranges do
      resources :addresses
    end
    resources :devices
  end
end
