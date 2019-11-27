# frozen_string_literal: true

set :rails_env, 'production'
server ENV['DEPLOY_IP'], user: ENV['DEPLOY_USER'], roles: %w[app db web]
set :rvm_ruby_version, ENV['DEPLOY_RVM_RUBY_VERSION']
set :repo_path, -> { "#{fetch(:deploy_to)}/.git" }