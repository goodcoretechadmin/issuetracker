class HomeController < ApplicationController
  def index
  end
  def search
    @client = params[:client]
    @doctor = params[:doctor]
     @issues = Issue.find_by_client_doctor(@client, @doctor)
    render :index
  end
end
