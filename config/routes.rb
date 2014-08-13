Rails.application.routes.draw do

  root :to => 'chartography#view'

  get "/search" => "chartography#search", as: :search

end
