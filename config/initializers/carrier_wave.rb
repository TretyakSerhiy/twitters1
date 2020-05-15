if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['EU_CENTRAL_1'],
      :aws_secret_access_key => ENV['EU_CENTRAL_1']
    }
    config.fog_directory     =  ENV['EU_BUCKET']
  end
end
