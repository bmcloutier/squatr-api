Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # "hello every one"
  defaults format: :json do
    get "/rooms" => "rooms#index"
    get "/rooms/:id" => "rooms#show"
    post "/rooms" => "rooms#create"
    patch "/rooms/:id" => "rooms#update"
    delete "/rooms/:id" => "rooms#destroy"

    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/room_images" => "room_images#index"
    get "/room_images/:id" => "room_images#show"
    post "/room_images" => "room_images#create"
    patch "/room_images/:id" => "room_images#update"
    delete "/room_images/:id" => "room_images#destroy"

    get "/reservations" => "reservations#index"
    get "/reservations/:id" => "reservations#show"
    post "/reservations" => "reservations#create"
    patch "/reservations/:id" => "reservations#update"
    delete "/reservations/:id" => "reservations#destroy"

    get "/reviews" => "reviews#index"
    get "/reviews/:id" => "reviews#show"
    post "/reviews" => "reviews#create"
    patch "/reviews/:id" => "reviews#update"
    delete "/reviews/:id" => "reviews#destroy"
  end
end
