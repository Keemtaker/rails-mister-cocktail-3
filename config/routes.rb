Rails.application.routes.draw do
 mount Attachinary::Engine => "/attachinary"

 root to: 'cocktails#index'

  resources(:doses, only: [:destroy])
  resources(:cocktails, only: [:new, :create, :index, :show, :destroy]) do
    resources(:doses, only: [:new, :create])

    end

  root('cocktail#index')
end


