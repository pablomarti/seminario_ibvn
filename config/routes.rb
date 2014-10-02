Rails.application.routes.draw do

  get 'main/index'
  get 'course_information/:id' => 'main#course', :as => 'course_information'
  get 'lesson/:id' => 'main#lesson', :as => 'lesson'

  resources :lessons
  resources :courses
  resources :careers

  root 'main#index'

end
