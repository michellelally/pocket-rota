class EmployeePresenter
    def initialize(shift)
      @employee = employee
    end
    def title_without_forbidden_words
      @employee.name = ""
    end
    def css_color
      @employee.draft? ? "orange" : "green"
    end
  end