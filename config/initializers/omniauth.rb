OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '202928669887657', 'bc953284d9ea190ab4865d3c2da823f1'
end