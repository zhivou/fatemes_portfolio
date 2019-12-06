class ContactForm < MailForm::Base
  attributes :name,  :validate => true
  attributes :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :message
  attribute :nickname,  :captcha  => true

  def headers
    {
        :subject => "MY WEBSITE: CONTACT ME PAGE MESSAGE",
        :to => ENV["MY_EMAIL"],
        :from => %("#{name}" <#{email}>)
    }
  end
end