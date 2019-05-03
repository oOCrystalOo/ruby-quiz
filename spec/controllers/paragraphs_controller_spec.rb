require 'rails_helper'

RSpec.describe ParagraphsController, type: :controller do
  describe "paragraph#create action" do
    it "should successfully add the new paragraph into the database" do
      post :create, params: { paragraph: { text: "Hello", author: "Author" } }
      expect(response).to redirect_to root_path
      
      expect(Paragraph.last.text).to eq("Hello")
    end
  end
end
