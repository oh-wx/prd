OhwxDev::Application.routes.draw do
  
  root :to => 'oh_wx#Home'
  
  match "/WxEvents" => 'oh_wx#WxEvents'
  match "/Images", :to => redirect('/Gallery.html') #'oh_wx#Images'
  match "/L_O_W" => 'oh_wx#L_O_W'
  match "/About" => 'oh_wx#About'
  match "/References" => 'oh_wx#References'
  
  
  
  get "oh_wx/Home"
  get "oh_wx/WxEvents"
  get "oh_wx/Images"
  get "oh_wx/L_O_W"
  get "oh_wx/About"
  get "oh_wx/References"

  resources :events
  #resources :radars
  #resources :wws
  #resources :mesos
  resources :outlooks
  resources :models
  resources :pictures
  #resources :discussions

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
