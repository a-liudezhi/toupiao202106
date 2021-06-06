Rails.application.routes.draw do
  resources :topics do
    member do
      post 'upvote'
      post 'downvote'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


root "topics#index"
get '/about/', to:'topics#about'

end
