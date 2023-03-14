class SelectForm
    include ActiveModel::API

    attr_accessor :name, :email, :kindergarten_selection
    validates :name, :email, :kindergarten_selection, presence: true
end