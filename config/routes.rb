SabzAccount::Application.routes.draw do
  use_doorkeeper

  root to: "pages#index"
  devise_for :users
end
