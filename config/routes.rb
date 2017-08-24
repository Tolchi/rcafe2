# == Route Map
#
#             Prefix Verb   URI Pattern                                      Controller#Action
#               root GET    /                                                welcome#index
#      post_comments POST   /posts/:post_id/comments(.:format)               comments#create
#       post_comment DELETE /posts/:post_id/comments/:id(.:format)           comments#destroy
#              posts GET    /posts(.:format)                                 posts#index
#                    POST   /posts(.:format)                                 posts#create
#           new_post GET    /posts/new(.:format)                             posts#new
#          edit_post GET    /posts/:id/edit(.:format)                        posts#edit
#               post GET    /posts/:id(.:format)                             posts#show
#                    PATCH  /posts/:id(.:format)                             posts#update
#                    PUT    /posts/:id(.:format)                             posts#update
#                    DELETE /posts/:id(.:format)                             posts#destroy
#                    GET    /posts(.:format)                                 posts#index
#                    POST   /posts(.:format)                                 posts#create
#                    GET    /posts/new(.:format)                             posts#new
#                    GET    /posts/:id/edit(.:format)                        posts#edit
#                    GET    /posts/:id(.:format)                             posts#show
#                    PATCH  /posts/:id(.:format)                             posts#update
#                    PUT    /posts/:id(.:format)                             posts#update
#                    DELETE /posts/:id(.:format)                             posts#destroy
#     bulletin_posts GET    /bulletins/:bulletin_id/posts(.:format)          posts#index
#                    POST   /bulletins/:bulletin_id/posts(.:format)          posts#create
#  new_bulletin_post GET    /bulletins/:bulletin_id/posts/new(.:format)      posts#new
# edit_bulletin_post GET    /bulletins/:bulletin_id/posts/:id/edit(.:format) posts#edit
#      bulletin_post GET    /bulletins/:bulletin_id/posts/:id(.:format)      posts#show
#                    PATCH  /bulletins/:bulletin_id/posts/:id(.:format)      posts#update
#                    PUT    /bulletins/:bulletin_id/posts/:id(.:format)      posts#update
#                    DELETE /bulletins/:bulletin_id/posts/:id(.:format)      posts#destroy
#          bulletins GET    /bulletins(.:format)                             bulletins#index
#                    POST   /bulletins(.:format)                             bulletins#create
#       new_bulletin GET    /bulletins/new(.:format)                         bulletins#new
#      edit_bulletin GET    /bulletins/:id/edit(.:format)                    bulletins#edit
#           bulletin GET    /bulletins/:id(.:format)                         bulletins#show
#                    PATCH  /bulletins/:id(.:format)                         bulletins#update
#                    PUT    /bulletins/:id(.:format)                         bulletins#update
#                    DELETE /bulletins/:id(.:format)                         bulletins#destroy
# 

Rails.application.routes.draw do

  root 'welcome#index'

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  resources :posts
  resources :bulletins do
    resources :posts
  end
end
