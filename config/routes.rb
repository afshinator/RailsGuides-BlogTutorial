# == Route Map (Updated 2014-03-11 00:57)
#
#            Prefix Verb   URI Pattern                                 Controller#Action
#     welcome_index GET    /welcome/index(.:format)                    welcome#index
#     post_comments GET    /posts/:post_id/comments(.:format)          comments#index
#                   POST   /posts/:post_id/comments(.:format)          comments#create
#  new_post_comment GET    /posts/:post_id/comments/new(.:format)      comments#new
# edit_post_comment GET    /posts/:post_id/comments/:id/edit(.:format) comments#edit
#      post_comment GET    /posts/:post_id/comments/:id(.:format)      comments#show
#                   PATCH  /posts/:post_id/comments/:id(.:format)      comments#update
#                   PUT    /posts/:post_id/comments/:id(.:format)      comments#update
#                   DELETE /posts/:post_id/comments/:id(.:format)      comments#destroy
#             posts GET    /posts(.:format)                            posts#index
#                   POST   /posts(.:format)                            posts#create
#          new_post GET    /posts/new(.:format)                        posts#new
#         edit_post GET    /posts/:id/edit(.:format)                   posts#edit
#              post GET    /posts/:id(.:format)                        posts#show
#                   PATCH  /posts/:id(.:format)                        posts#update
#                   PUT    /posts/:id(.:format)                        posts#update
#                   DELETE /posts/:id(.:format)                        posts#destroy
#              root GET    /                                           welcome#index
#

RailsGuidesBlog::Application.routes.draw do
  get "welcome/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :posts do
    resources :comments
  end
  
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
