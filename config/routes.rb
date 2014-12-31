Rails.application.routes.draw do

  match '', to: 'websites#index', constraints: {subdomain: /.+/}, :via => [:get]
  
#website specific
    get '/home', to: 'websites#index', as: "website"
    get '/aboutus', to: 'websites#aboutus', as: "website_aboutus"
    get '/blog', to: 'websites#blog', as: "website_blog"
    get '/blogshow', to: 'websites#blogshow', as: "website_blogshow"
    get '/contact', to: 'websites#contact', as: "website_contact"
  #website specific

  devise_for :branches, :controllers => { registrations: 'registrations', sessions: 'sessions' } #override devise
  devise_for :admins

  get 'admins/dashboard'

  get 'branches/dashboard'
  get 'branches/settings'
  get 'branches/editwebsite'

  get 'admin/root' => "admins#dashboard" # devise login redirect
  get 'branch/root' => "branches#dashboard" # devise login redirect

  devise_scope :branch do
    get 'admins/newwebsite' => 'registrations#new'
  end


  root 'admins#dashboard'

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
