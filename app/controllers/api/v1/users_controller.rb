class Api::V1::UsersController < ApplicationController
  before_action :doorkeeper_authorize!
  respond_to :as_json

  def me
    response_with current_resource_owner
  end
end
