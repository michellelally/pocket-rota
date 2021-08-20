class RestrictionsPresenter
    def initialize(restrictions)
        @restrictions = restrictions
    end

    def travel
        @restrictions.travel("Yes")
    end
end