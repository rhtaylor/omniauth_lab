Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?

  if Rails.env.production? 
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']  
  end
end