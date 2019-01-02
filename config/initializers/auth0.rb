# config/initializers/auth0.rb

Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    Rails.application.credentials.auth0[:client_id],
    Rails.application.credentials.auth0[:secret],
    'project27.au.auth0.com',
    callback_path: "/auth/oauth2/callback",
    authorize_params: {
      scope: 'openid email profile',
      audience: 'https://project27.au.auth0.com/userinfo'
    }
  )
end
