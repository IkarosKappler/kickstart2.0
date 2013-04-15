
  run "cd #{release_path}/config && ln -s /opt/infopark/rails_connector.yml"
  run "cd #{release_path}/config && ln -s /opt/infopark/custom_cloud.yml"
  run "bundle exec rake assets:precompile RAILS_ENV=production"
