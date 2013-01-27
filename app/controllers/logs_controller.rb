class LogsController < ApplicationController
  def create
    log = Log.new
    log.ip_address = request.remote_ip
    log.log_file = request.body.read
    debugger
    log.save!
    render :nothing => true
  end

  def index
    @logs = Log.all
  end

  def show
    @log = Log.find(params[:id])

    render :text => @log.log_file, :content_type => "text/plain"
  end
end
