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

  def edit
    @log = Log.find(params[:id])
  end

  def update
    @log = Log.find(params[:id])
    @log.update_attributes!(params[:log])
    
    redirect_to logs_path
  end

  def destroy
    @log = Log.find(params[:id])
    @log.destroy
    redirect_to logs_path
  end
end
