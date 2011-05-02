class UserMailer < ActionMailer::Base
  default :from => "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup.subject
  #
  def signup
    @greeting = "Hi"

    mail :to => "to@example.org"
  end

  def old_signup
    @greeting = "Hi"

    content_type "multipart/alternative"

    part :content_type => "text/plain", :body => render_message("signup.text.erb", :body => body)
    part :content_type => "multipart/related" do |related|
      related.part :content_type => "text/html", :body => render_message("signup.html.erb", :body => body)
    end
  end
end
