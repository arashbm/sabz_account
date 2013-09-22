SabzAccount::Application.routes.draw do
  use_doorkeeper

  devise_for :users
end
