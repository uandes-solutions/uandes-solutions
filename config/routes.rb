Rails.application.routes.draw do
  resources :legal_people
  resources :petitioners
  get 'entity_selection/index'
  resources :regional_pros_offices
  resources :felonies
  resources :rucs
  resources :people
  resources :institutions
  resources :prosecutors
  resources :causes
  resources :derivations
  resources :projects
  resources :goals
  resources :case_coordinations
  resources :iics
  resources :interinstitutional_coordinations
  resources :error_logs
  resources :logs

  get '/tasks/report', to: "tasks#report", as:'tasks_report'

  get '/tasks/report_csv', to: "tasks#report_csv", as:'tasks_report_csv'
  resources :tasks
  resources :documents
  # devise_for :users

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :admin_users, :controller => 'users'

  get 'admin_users', to: 'admin_users#index'
  get 'admin_users/report', to: 'admin_users#report', as:'admin_users_report'
  get 'admin_users/report_csv', to: 'admin_users#report_csv'

  root to: 'application#index'
  resources :employees

  get 'theme_finder', to: 'theme_finder#index'
  get 'theme_finder/report', to: 'theme_finder#report', as:'themes_report'
  get 'theme_finder/report_csv', to: 'theme_finder#report_csv'

  get '/tasks/:id/work', to: "tasks#work"


end
