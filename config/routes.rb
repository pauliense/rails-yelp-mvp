Rails.application.routes.draw do

  # get 'reviews/new'

  # get 'reviews/create'

  # get 'reviews/set_restaurant'

  # get 'reviews/review_params'

  resources :restaurants do
    # routes localhost:3000/restaurants/???

    # will not place :id in URL - for groups of objects
    # collection do
    #   get 'top', to: 'restaurants#top'
    # end

    # will place :id in URL - for specific object
    # member do
    #   get 'chef', to: 'restaurants#chef'
    # end

    resources :reviews, only: [:new, :create]
  end


  root 'restaurants#index'
end

