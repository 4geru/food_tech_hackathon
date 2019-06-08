class PhotosController < ApplicationController
protect_from_forgery :except => [:create]

  def create
    client.authorization :Key, '734f2eb1891744b9b458fe33b120cb4d'
    client.headers['Authorization']
    image = params[:image]
    if image.present?
      prefix = image[/(image|application)(\/.*)(?=\;)/]
      # type = prefix.sub(/(image|application)(\/)/, '')
      data = Base64.decode64(image.sub(/data:#{prefix};base64,/, ''))
      filename = "#{Time.zone.now.strftime('%Y%m%d%H%M%S%L')}.#{'neko'}.jpeg"
      File.open("#{Rails.root}/public/#{filename}", 'wb') do |f|
        f.write(data)
      end
      # eyecatch.detach if eyecatch.attached?
      # eyecatch.attach(io: File.open("#{Rails.root}/tmp/#{filename}"), filename: filename)
      FileUtils.rm("#{Rails.root}/public/#{filename}")

      binding.pry
    end
  end

  def show
    # binding.pry
  end

  private

  def client
    @client ||= Faraday::Connection.new 'https://api.clarifai.com/v2/models/aaa03c23b3724a16a56b629203edc62c/outputs'
  end
end
