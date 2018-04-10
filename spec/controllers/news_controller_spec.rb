require 'rails_helper'

RSpec.describe NewsController, type: :controller do
  describe "GET index" do
    subject {get :index}
    it "it has status code 200" do
      expect(subject.response_code).to eq(200)
    end
    it "it renders template" do
      expect(subject).to render_template("index")
    end
  end

  describe "GET show" do
    subject {get :show, params:{id:1}}
    it "it redirects to news/show" do
      expect(subject).to render_template('show')
    end
  end
end
