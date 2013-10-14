class LogsController < ActionController::Base

  def logs
    log = File.join(Rails.root, "log", "#{ Rails.env }.log")
    @lines = `tail -500 #{ log }`.split(/\n/)
    respond_to do |wants|
      wants.html
      wants.json{ render(:json => @lines) }
    end
  end

end