require 'rails_helper'

describe 'navigate' do
  describe 'homepage' do
    it 'can be reached succesfully' do
          visit root_path
          expect(page.status_code)
    end
=begin
    it 'should have h1 tag' do
      visit root_path
      expect(page.body).to include("<h1>")
    end
=end
  end
end