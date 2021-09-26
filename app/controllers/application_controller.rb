require 'action_text'

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper ActionText::Engine.helpers
end

def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end
