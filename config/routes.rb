Rails.application.routes.draw do
  root to: 'students#index'

  get '/pages/cohorts' => 'cohorts#index'
  get '/pages/courses' => 'courses#index'
  get '/pages/students' => 'students#index'
  get '/pages/instructors' => 'instructors#index'

  get '/students/create'
  post '/students/create' => 'students#create'

  get '/instructors/create'
  post '/instructors/create' => 'instructors#create'

  get '/courses/create'
  post '/courses/create' => 'courses#create'

  get '/cohorts/create'
  post '/cohorts/create' => 'cohorts#create'

  get '/students/:id/edit' => 'students#edit'
  patch '/students/:id/edit' => 'students#update'

  get '/instructors/:id/edit' => 'instructors#edit'
  patch '/instructors/:id/edit' => 'instructors#update'

  get '/courses/profile/:id' => 'courses#show'

  # get '/students/:id/student_profile'

  resources :students
  resources :instructors
  resources :courses
  resources :cohorts
  # delete '/students/:id' => 'students#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
