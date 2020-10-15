module FormHelper
    def setup_user(user)
        2.times { user.addresses.build }
        user
    end
end