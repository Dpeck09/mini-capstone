Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/first-route" => "products#all"

  get "/second-route" => "products#individual"
  
  get "/third-route" => "products#individual_2"

  get "/fourth-route" => "products#individual_3"

end
