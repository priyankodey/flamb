class UserMailer < ActionMailer::Base

  default from: "flambiancetechnologies@gmail.com"

  def welcome_email(user)
    @user = user
    #attachments["garb.jpg"] = File.read("#{Rails.root}/public/assets/garb.jpg")
    mail(to: @user.email, subject: 'Flambiance Response' )
  end

   def query_mail(user)
  	@user=user
    mail(:to => "priyankodey01@gmail.com", :subject => "Flambiance Quote")
   end

end
