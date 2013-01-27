class MicropostsController < ApplicationController
  before_filter :signed_in_user

  def create
    logger.debug("inside the create action")
  end

  def destroy
  end
end
