Rails.application.routes.draw do
  namespace :api do
    get '/first_contact' => 'contacts#index'
    post '/first_contact' => 'contacts#create'
    get '/all_contacts/:id' => 'contacts#show'
    patch 'all_contacts/:id' => 'contacts#update'
    delete 'all_contacts/:id' => 'contacts#destroy'

 end
end
