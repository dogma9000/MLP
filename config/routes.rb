Rails.application.routes.draw do
  get 'login/auth'

  get 'login/callback'

  get 'twitter/auth', :as => "twitter"

  get 'twitter/callback', :as => "twitter_callback"

  get 'sessions/login_or_create', :as => "login"

  get 'sessions/logout', :as => "logout"

  get 'draugiem/auth', :as => "draugiem"

  get 'draugiem/callback', :as => "draugiem_callback"

  get 'general/static_article'

  get 'general/article'

  get 'general/index'
  get 'pages/stories'
  get 'pages/art'
  get 'pages/music'
  get 'pages/soft'
  get 'general/upload'
  post 'general/create_uploaded'
  post 'comments/create'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
 
  # You can have the root of your site routed with "root"
  root 'general#index'

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
