Rails.application.routes.draw do
  get 'lemon' => 'oils#lemon_action'
  get 'peppermint' => 'oils#peppermint_action'
end
