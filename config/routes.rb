Rails.application.routes.draw do
  get '/users/students'
  get '/users/instructors'

  post '/students/create' => 'students#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
