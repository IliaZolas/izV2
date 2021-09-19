class Contact < MailForm::Base
    include MailForm::Delivery

    attribute :name, validate: true
    attribute :subject, validate: true
    attribute :email, validate: true
    attribute :message
    def headers
        { 
        subject: "IZ Portfolio Contact Form",
        to: 'ilia.zolas@gmail.com',
        from: %("#{name}" <#{email}>)
        }
    end
end

