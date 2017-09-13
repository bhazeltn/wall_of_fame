# config valid only for current version of Capistrano
lock "3.9.1"

set :application, "wall_of_fame"
set :repo_url, "git@github.com:bhazeltn/wall_of_fame.git"
set :deploy_to, "/home/wof/calalta/wall_of_fame"
append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"
