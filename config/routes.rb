Rails.application.routes.draw do

  scope "(:locale)" do
    root 'main#index'
    get 'helps/aboutvvf'
    get 'helps/how_to_create'
    get 'helps/how_to_support'
    get 'helps/aboutpayment'
    get 'helps/faqs'
    get 'news/index'
    get 'news/detail'
    get 'projects/index'
    get 'projects/detail'
    get 'projects/creator'
    get 'rewards/select'
    get 'rewards/ship'
    get 'rewards/confirm'
    get 'rewards/complete'
    get 'members/index'
    get 'members/favorite'
    get 'members/supported'
    get 'members/posted'
    get 'apply/index'
    get 'apply/basic'
    get 'apply/contents'
    get 'apply/rewards'
    get 'apply/contact'
    get 'apply/preview'
    get 'apply/complete'
    get 'mypage/index'
    get 'mypage/favorite'
    get 'mypage/supported'
    get 'mypage/posted'
    get 'mypage/messages'
    get 'mypage/profile'
    get 'mypage/mail'
    get 'mypage/wallet'
    get 'mypage/withdraw'
    get 'dashboard/index'
    get 'dashboard/notifications'
    get 'dashboard/notifications_detail'
    get 'dashboard/messages'
    get 'dashboard/reports'
    get 'dashboard/comments'
    get 'dashboard/rewards'
    get 'dashboard/admin'
  end

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
