Rails.application.routes.draw do

  root 'places#index'

  get '/places' => 'places#index'
  get '/places/new' => 'places#new'
  
  #get '/places/submit_new' => 'places#submitted'
  post '/places' => 'places#create'

  get '/places/:id' => 'places#show'
  
  #get '/places/:id/delete' => 'places#delete'
  delete '/places/:id' => 'places#destroy'

  get '/places/:id/edit' => 'places#edit'

  #get '/places/:id/submit_edit' => 'places#update'
  patch '/places/:id' => 'places#update'

  #get '/reviews/:place_id/submit_new'  => 'reviews#create'
  post '/reviews/:place_id' => 'reviews#create'

end
