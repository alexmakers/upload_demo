require 'sinatra'
require 'aws/s3'

get '/' do
  erb :form
end

post '/upload' do
  # path = "uploads/" + params[:upload][:filename]
  #   
  #   IO.write(path, params[:upload][:tempfile].read)
  
  AWS::S3::Base.establish_connection!(
    :access_key_id     => 'AKIAJPD4QQS6C5BNQF5Q',
    :secret_access_key => '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'
  )
  AWS::S3::S3Object.store(
    params[:upload][:filename],
    params[:upload][:tempfile].read,
    'makers-upload-demo'
  )
end