# config valid only for current version of Capistrano
lock '3.10.2'

set :application, 'archery'
set :repo_url, 'git@github.com:Sam-Killgallon/archery_tracker.git'
set :user, 'deploy'
set ssh_options: { forward_agent: true }


append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

set :puma_init_active_record, true

namespace :rounds do
  desc 'Create PDFs for all rounds'
  task :pdf do
    on roles(:all) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'rounds:pdf'
        end
      end
    end
  end
end

before 'deploy:publishing', 'rounds:pdf'
