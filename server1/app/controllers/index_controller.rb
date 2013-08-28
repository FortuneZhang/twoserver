#encoding=UTF-8
require 'net/http'
class IndexController < ApplicationController

  skip_before_filter :verify_authenticity_token

  @@url = URI.parse('http://localhost:3001/index/index')


  def index
  end

  def check_status
    Net::HTTP.start(@@url.host, @@url.port) do |http|
      req = Net::HTTP::Post.new(@@url.path)
      req.set_form_data({'hello' => 'world'})
      puts JSON.parse http.request(req).body
      @info = JSON.parse http.request(req).body
    end


    render :json => {"status" => @info['status']}


  end

end
