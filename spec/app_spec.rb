require "spec_helper"

describe "Functions" do
  include FunctionsFramework::Testing

  context "search" do
    it 'should return ok' do
      load_temporary "app.rb" do
        request = make_get_request "http://localhost:8080"

        response = call_http "search", request

        expect(response.status).to be 200
      end
    end

    it 'should return a list of message' do
      load_temporary "app.rb" do
        request = make_get_request "http://localhost:8080"

        response = call_http "search", request

        messages = JSON.parse(response.body.join)

        expect(messages.size).to be 1

        message = messages[0]

        expect(message.has_key?("uid")).to be true
        expect(message.has_key?("updateDate")).to be true
        expect(message.has_key?("titleText")).to be true
        expect(message.has_key?("mainText")).to be true
        expect(message.has_key?("redirectionUrl")).to be true
      end
    end
  end
end
