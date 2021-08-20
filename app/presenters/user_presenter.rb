class UserPresenter
    def initialize(user)
      @user = user
    end
  
    def status
      @user.sign_in_count.positive? ? 'active' : 'inactive'
    end
  end
  