Rails.application.routes.draw do
  get 'reservations/index'
  get 'rooms/index'
  get 'tops/index'
  root to:'tops#index'
  get 'rooms/search'
  
  devise_for :users
  get 'users/mypage' => 'users#mypage'
  resources :rooms do
    resources :reservations
  end
  post 'reservation/confirm' => 'reservations#confirm'
  post 'rooms/:room_id/reservations' => 'reservations#create'
  get 'rooms/:room_id/reservations/:id/edit' => 'reservations#edit'
  delete 'rooms' => 'rooms#destroy'
  resources :users
  resources :reservations
end
