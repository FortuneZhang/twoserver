class IndexController < ApplicationController
  skip_before_filter :verify_authenticity_token

  @@status = false;

  def index
    respond_to do |format|
      format.json { render :json => {:status => @@status} }
    end
  end


  def set_value

    @statue = @@status
  end

  def set_value_success
    @@status = !@@status;

    @statue = @@status
  end


end
