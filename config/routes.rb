CourseReviewer::Application.routes.draw do
  root 'static_pages#home'
  resources :courses do
    resources :reviews
  end

end
