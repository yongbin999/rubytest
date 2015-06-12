Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/help'

  get 'ohoh', to: "microposts#index"
  get 'signup',  to: 'users#new'
  get 'signup',  to: 'users#new'


  match "hi/bye" => "articles#index", via: [:get, :post]
  match "hi/bye/:id" => "articles#show", via: [:get, :post]
  match "articles/:id" => "articles#show", via: [:get, :post]
  # need action match "hi/hi" => "articles", via: [:get, :post]
  # wrong need namespace match "hi/hi1" => "students#index", via: [:get, :post]
  resources :testing, controller: "people/students", 
      constraints: { id: /[A-Z][A-Z][0-9]+/ }

  namespace :people do
    resources :admins do
    resources :admin_profiles
    end
  
    resources :students
  end

  resources :microposts
  resources :users, path_names: { new: 'make', edit: 'change' }

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :articles do
    resources :comments
  end

scope 'admin', as: 'admin' do
  resources :users, :microposts
end
scope path_names: { new: 'make' } do
  # rest of your routes
end



  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
