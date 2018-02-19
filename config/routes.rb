Rails.application.routes.draw do

  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  
  # get 'same_director/:title' => 'movies#search', as: :same_director
  
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
  
  
  get '/', to: 'main#show', as: 'root'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'sessions/new'
  get '/about', to: 'main#about', as: 'about'
  post '/search', to: 'main#search', as: 'search'
  get '/users/edit', to: 'users#edit', as: 'edit_user'
  get '/reports/new', to: 'reports#new', as: 'new_report'
  get '/reports/open', to: 'reports#open', as: 'open_report'
  get '/reports/open/env', to: 'reports#open_env', as: 'env_open_report'
  get '/reports/open/bio', to: 'reports#open_bio', as: 'bio_open_report'
  get '/reports/open/soc', to: 'reports#open_soc', as: 'soc_open_report'
  get '/reports/close', to: 'reports#close', as: 'close_report'
  post '/reports', to: 'reports#create', as: 'reports'
  post '/reports/env', to: 'reports#env_create', as: 'env_reports'
  post '/reports/bio', to: 'reports#bio_create', as: 'bio_reports'
  post '/reports/soc', to: 'reports#soc_create', as: 'soc_reports'
  resources :users, :except => [:edit]
end