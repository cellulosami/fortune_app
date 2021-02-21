Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/fortune_path" => "my_examples#fortune_action"
  end

  namespace :api do
    get "/lottery_path" => "my_examples#lottery_action"
  end

  namespace :api do
    get "/visit_path" => "my_examples#visit_action"
  end
end
