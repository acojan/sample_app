SampleApp::Application.routes.draw do
 resources :users
 resources :people
 resources :entries
 resources :alumnis
 resources :counselors
 resources :counselees 
 resources :individuals
 resources :organizations
 resources :students
 resources :staffs
 resources :others
 resources :counseling_sessions
 resources :sessions, only: [:new, :create, :destroy]

  match '/signin',  to: 'sessions#new' 
  match '/signout', to: 'sessions#destroy', via: :delete

  root to: 'static_pages#home'
  match "/help", to: 'static_pages#help'
  match "/about", to: 'static_pages#about'
  match "/contact", to: 'static_pages#contact'
  
  match '/alumni/:id/printview', to: 'alumnis#printshow', :as => :printview_alumni
  match '/counselee/:id/printview', to: 'counselees#printshow', :as => :printview_counselee
  match '/counselor/:id/printview', to: 'counselors#printshow', :as => :printview_counselor
  match '/individual/:id/printview', to: 'individuals#printshow', :as => :printview_individual
  match '/organization/:id/printview', to: 'organizations#printshow', :as => :printview_organization
  match '/staff/:id/printview', to: 'staffs#printshow', :as => :printview_staff
  match '/student/:id/printview', to: 'students#printshow', :as => :printview_student
  # match "/people/new/:type", to: 'people#new'
  # match "/counselee/more/:id", to: 'counselees#more'
  
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
