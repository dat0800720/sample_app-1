class User< ApplicationRecord
    validates :name, presence: true, length: { maximum:50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { minimum: 6}
                        format: {with: VALID_EMAIL_REGEX },
                        unniqueness: { case_sensitive: false}
    validates :password, presence: true, length: {minimum: 6 }

    before_save_password

    has_secure_password

    private
        def
            email_downcase
            email.email_downcase
        end
end
