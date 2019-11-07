GcloudStorage.configure do |config|
  config.credentials = {
    bucket_name: ENV['BUCKET'], # Storage bucket name
    project_id: ENV['GOOGLE_CLOUD_PROJECT'],   # Google Cloud Project ID
    key_file: ENV['GOOGLE_CLOUD_KEYFILE']   # Compute Service account json file
  }
end
