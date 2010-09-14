$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"

set :application, "opengovernment"
set :rvm_ruby_string, 'ruby-1.9.2'
set :rails_env, "production"
set :branch, "production"
set :deploy_to, "/web/opengovernment.org"
set :environment_database, 'og_production'
set :environment_dbhost, 'localhost'
role :web, "bearclaw.opengovernment.org"
role :app, "bearclaw.opengovernment.org"
role :db,  "bearclaw.opengovernment.org", :primary => true

set :production_database, "og_production"
set :production_dbhost,   "localhost"

set :environment_database, defer { production_database }
set :environment_dbhost, defer { production_dbhost }
