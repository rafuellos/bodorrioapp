Rails.application.routes.draw do

  get '/' => 'petitions#home', :as => :home
  get '/thanks' => 'petitions#list', :as => :thanks


  resources :petitions

end
