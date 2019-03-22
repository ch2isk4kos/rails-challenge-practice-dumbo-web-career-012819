Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :buildings#, only: [:index, :show, :edit]
    resources :companies#, only: [:index, :show, :new, :post]
    resources :offices#, only: [:index]

end
