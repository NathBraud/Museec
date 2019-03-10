Rails.application.routes.draw do
  	devise_for :users
	resources:bands
	root 'bands#index'
  end
