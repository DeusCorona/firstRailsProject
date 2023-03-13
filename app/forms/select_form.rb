class SelectForm
    include ActiveModel::API

    attr_accessor :name, :email
    validates :name, :email, presence: true
end