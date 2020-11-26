Rails.application.routes.draw do
  get 'interventions/new'
  get 'interventions/update_buildings', as: 'update_buildings'
  get 'interventions/update_batteries', as: 'update_batteries'
  get 'interventions/update_columns', as: 'update_columns'
  get 'interventions/update_elevators', as: 'update_elevators'
  get 'interventions/update_element_path', as: 'update_element_path'  
  #post 'interventions/create', as: 'create_path'
  
  get 'interventions/new', as: 'new_path'

  #get '/INTERVENTION_FORM', as: 'new_path'



  mount RailsAdmin::Engine => '/backoffice', as: 'rails_admin'

  resources :interventions do
    collection do
      get 'get_buildings', to: "interventions#get_buildings"
    end 
  end

  resources :addresses, only: %i[index]

  resources :leads
  resources :employees

  resources :customers
  resources :buildings

  resources :quotes, only: %i[user_quotes new create]

  root to: 'static_pages#index'
  get 'static_pages/residential'
  get 'static_pages/corporate'

  devise_for :users,
             controllers: {
               registrations: 'users/registrations', sessions: 'users/sessions'
             },
             path_names: {
               sign_in: 'sign_in',
               sign_out: 'sign_out',
               password: 's',
               confirmation: 'v'
             }

  get 'my_quotes' => 'quotes#user_quotes', as: :my_quotes
  get 'my_leads' => 'leads#user_leads', as: :my_leads 

  resource :messages do
    collection { post 'reply' }
  end
end
