CourseReviewer::Application.routes.draw do
 get '/auth/google_oauth2/callback' => 'sessions#create'
 delete '/signout' =>  'sessions#destroy', as: :signout
 root 'static_pages#home'
 
 resources :courses do
    resources :reviews
  end

end
