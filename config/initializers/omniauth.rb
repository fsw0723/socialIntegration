OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'kcK4sgEVaOkmpPogw5UwQ', 'lGGK1B8ON46V6t8Q27K5Dfkt6Pi5S2rE9kFdFnNofo'
end
