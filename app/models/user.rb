class User < ApplicationRecord
    # attr_accessible :email, :name, :password, :password_confirmation
    # email:string
    # password_digest:string
    #
    # password: string virtual
    # password_confirmation: string virtual
    
    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message:"must be a valid email address" }

end
