Rails.application.routes.draw do
 root to: 'cocktails#index'

  resources(:doses, only: [:destroy])
  resources(:cocktails, only: [:new, :create, :index, :show]) do
    resources(:doses, only: [:new, :create])

    end

  root('cocktail#index')
end


