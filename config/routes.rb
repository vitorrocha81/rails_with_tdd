Rails.application.routes.draw do
  root to: "static#homepage"
  devise_for :users
end
