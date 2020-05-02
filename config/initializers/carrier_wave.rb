if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['eu-central-1'],
      :aws_secret_access_key => ENV['eu-central-1']
    }
    config.fog_directory     =  ENV['EU_BUCKET']
  end
end
