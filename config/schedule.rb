require 'dotenv'
Dotenv.load '.env'

set :output, '~/cron_helpdesk.log'
job_type :rake, "cd :path && :environment_variable=:environment "\
                "#{ENV['RVM_PATH']}/bin/rvm #{ENV['CURRENT_RVM_RUBY_VERSION']} do bundle exec "\
                'rake :task --silent :output'

every 1.minute do
  rake 'helpy:mailman'
end
