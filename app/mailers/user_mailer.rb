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
    recipients "to@example.org"
    from "from@example.com"
    subject "Signup"
    body :greeting => "Hi"
    content_type "multipart/alternative"

    part "text/plain" do |p|
      p.body = render_message("signup.text.erb", :body => body)
    end
    part :content_type => "multipart/related" do |related|
      related.part :content_type => "text/html", :body => render_message("signup.html.erb", :body => body)
    end
  end
end
