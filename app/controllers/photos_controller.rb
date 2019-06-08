class PhotosController < ApplicationController
protect_from_forgery :except => [:create]

  def create
    client.authorization :Key, '734f2eb1891744b9b458fe33b120cb4d'
    client.headers['Authorization']
    client.post '/https://api.clarifai.com/v2/models/aaa03c23b3724a16a56b629203edc62c/outputs', { inputs: { data: { image: url } } }
  end

  def show
    binding.pry
  end

  private

  def client
    @client ||= Faraday::Connection.new 'http://sushi.com'
  end
end
