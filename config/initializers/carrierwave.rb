if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => 'AKIAIDKMACWFKSU2QVNA',
      :aws_secret_access_key => '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'
    }
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.fog_directory     =  'kskplayground'
  end
end