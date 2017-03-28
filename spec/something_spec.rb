require 'spec_helper'
require_relative 'test_support/something'
require_relative '../app'

feature Page::Something do
  scenario 'some scenario' do
    page = Page::Something.new

    result = page.example?

    expect(result).to be true
  end
end
