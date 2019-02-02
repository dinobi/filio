class User < ApplicationRecord
  EMAIL_REGEX = /\A\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})\z/i.freeze

  has_secure_password

  validates :email, uniqueness: { case_sensitive: false }, format: EMAIL_REGEX
  validates :password, length: { minimum: 8 }

  concerning :WorkSamples do
    included do
      has_many :work_samples, dependent: :destroy
    end

    def all_work_samples
      work_samples.order(created_at: :desc)
    end
  end
end
