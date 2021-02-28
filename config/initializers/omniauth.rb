Rails.application.config.middleware.use OmniAuth::Builder do
    if Rails.env.development? || Rails.env.test?
      provider :github, "f922eb0448d15a80257a", "b10802d00fc063ab4a81501fd4b4e8a0746d994c" 
    else
      provider :github,
        Rails.application.credentials.github[:client_id],
        Rails.application.credentials.github[:client_secret]
    end
  end