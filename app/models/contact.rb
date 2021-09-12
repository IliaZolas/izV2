class Contact < MailForm::Base
    attribute :name, validate: true
    attribute :subject, validate: true
    attribute :email, validate: /\A[^@\s]+@[^@\s]+\z/i
    attribute :message
    def headers
        { 
        subject: "IZ Portfolio Contact Form",
        to: 'ilia.zolas@gmail.com',
        from: %("#{name}" <#{email}>)
        }
    end
end

