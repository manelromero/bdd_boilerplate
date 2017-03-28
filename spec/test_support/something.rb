module Page
  class Something
    include Capybara::DSL

    def initialize
      url = '/index.html'
      visit(url)
      validate!
    end

    def example?
      has_css?('#test-div', visible: false)
    end

    def validate!
      page.assert_selector('#example')
    end
  end
end
