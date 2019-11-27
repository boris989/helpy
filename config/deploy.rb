# config valid for current version and patch releases of Capistrano
lock '~> 3.11.2'

set :application, 'helpdesk'
set :repo_url, 'git@github.com:boris989/helpy.git'
set :deploy_to, ENV['DEPLOY_TO']
append :linked_files, '.env', '.ruby-version', '.ruby-gemset'
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'
set :puma_workers, 2
set :whenever_identifier, -> { "#{fetch(:application)}_#{fetch(:stage)}" }