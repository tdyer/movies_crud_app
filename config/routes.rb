Rails.application.routes.draw do

  # Route a HTTP GET Request for all movies to the
  # MoviesController index action
  get '/movies', to: 'movies#index'

  # Route a to generate a HTML form to create a movie.
  # MoviesController new action
  get '/movies/new', to: 'movies#new'

  # Route a to generate a HTML form to edit a movie.
  # MoviesController edit action
  get '/movies/:id/edit', to: 'movies#edit'

  # Route a HTTP GET Request for one movie to the
  # MoviesController show action
  get '/movies/:id', to: 'movies#show', as: 'movie'

  # Route a HTTP POST Request for movies to the
  # MoviesController create action.
  post '/movies', to: 'movies#create'

  # Route a HTTP PATCH Request for movies to the
  # MoviesController update action.
  patch '/movies/:id', to: 'movies#update'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
