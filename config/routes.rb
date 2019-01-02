Rails.application.routes.draw do
  get 'home/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# config/routes.rb
Rails.application.routes.draw do
  root "home#show"
  get "/auth/oauth2/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
end

end
