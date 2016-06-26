class PagesController < ApplicationController
  def home
  end

  def contact
    ContactMailer.contact(contact_params).deliver_now
    redirect_to root_path
    flash[:notice] = "E-mail succesfully sent"
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end
end
