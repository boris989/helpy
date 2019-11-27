set :output, '~/cron_helpdesk.log'

every 1.minute do
  rake 'helpy:mailman'
end
