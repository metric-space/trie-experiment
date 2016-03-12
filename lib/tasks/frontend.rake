namespace :frontend do
  desc "get grunt to build frontend and transfer to public folder"
  task build: :environment do
    sh "cd client && gulp build && cp -r dist/* ../public/"
  end

  desc "TODO"
  task clean: :environment do
    sh "rm -rf public/*"
  end

end
