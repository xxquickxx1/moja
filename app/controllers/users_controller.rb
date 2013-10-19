class UsersController < ApplicationController
  
before_filter :authenticate_user!
  

  def dashboard
    set_meta_tags :nofollow => true

    @usersites = current_user.usersites.find(:all)
    @quick_question = QuickQuestion.new 
    
  end

  def addwebsite
    set_meta_tags :nofollow => true

    @usersite = current_user.usersites.new
   render 'users/add-website'
  end

  def createaddwebsite
    set_meta_tags :nofollow => true

    @usersite = current_user.usersites.create(params[:usersite])
    if @usersite.save
        redirect_to dashboard_path, :notice => 'Your website has been added. Thank you!'
    else
      redirect_to :back, :alert => 'There was problem adding your website. Try again!'
    end
  end

  def deleteaddwebsite
    @website = Usersite.find(params[:website_id])
     if @website.destroy
        redirect_to :back, notice: 'Your website has been removed.'
      else
          redirect_to :back, alert: 'Could not remove website from the list.'
        end
  end

  def inbox
    set_meta_tags :nofollow => true

    @messages = current_user.messages(:all)

  end

  def showmessage
    set_meta_tags :nofollow => true

    @message = Message.find(params[:id])
  end

  def deletemessage
    set_meta_tags :nofollow => true

    @message = Message.find(params[:id])  
    if @message.destroy
        redirect_to inbox_path, :notice => 'Your message has been discarded'
    else
        redirect_to inbox_path, :alert => 'There was a problem with deleting your message'
      end
  end
end