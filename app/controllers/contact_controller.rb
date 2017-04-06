class ContactController < ApplicationController

  def new

  end

  def create
    # this will render a plain text response that has a body of
    # 'Thank you for contacting us'
    render plain: "Thank you #{params[:name]} for contacting us"
  end

end
