require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /posts" do
    it "works! (now write some real specs)" do
      get "/posts"
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /posts/:id" do
    it "works! (now write some real specs)" do
      get "/posts/1"
      expect(response).to have_http_status(200)
    end
  end
  describe "POST /posts" do
    it "works! (now write some real specs)" do
      user = User.new(
        name: "Kaz",
        email: "test@test.com",
        password: "password"
      )
      user.save!
      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )

      post "/posts.json",
      params: {
        user_id: user.id,
        title: "Test Title",
        body: "Test Body",
        image: "http://test.com"
      },
      headers: {"Authorization": "Bearer #{jwt}"}
      expect(response).to have_http_status(200)
    end
  end
  describe "PATCH /posts/:id" do
    it "works! (now write some real specs)" do
      user = User.new(
        name: "Kaz",
        email: "test@test.com",
        password: "password"
      )
      user.save!
      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )

      post "/posts.json",
      params: {
        user_id: user.id,
        title: "Test Title",
        body: "Test Body",
        image: "http://test.com"
      },
      headers: {"Authorization": "Bearer #{jwt}"}
      expect(response).to have_http_status(200)
      new_post = JSON.parse(response.body)
      patch "/posts/#{new_post['id']}.json",
      params: {
        user_id: user.id,
        title: "Edited Title",
        body: "Edited Body",
        image: "http://edited-test.com"
      },
      headers: {"Authorization": "Bearer #{jwt}"}
      res = JSON.parse(response.body)
      expect(res['title']).to eq("Edited Title")
      expect(res['body']).to eq("Edited Body")
      expect(res['image']).to eq("http://edited-test.com")
    end
  end
  describe "DELETE /posts/:id" do
    it "works! (now write some real specs)" do
      user = User.new(
        name: "Kaz",
        email: "test@test.com",
        password: "password"
      )
      user.save!
      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )

      post "/posts.json",
      params: {
        user_id: user.id,
        title: "Test Title",
        body: "Test Body",
        image: "http://test.com"
      },
      headers: {"Authorization": "Bearer #{jwt}"}
      expect(response).to have_http_status(200)
      deleting_post = JSON.parse(response.body)
      delete "/posts/#{deleting_post['id']}",
      headers: {"Authorization": "Bearer #{jwt}"}
      expect(response).to have_http_status(200)
      get "/posts/#{deleting_post['id']}"
      expect(response.body).to eq("null")
    end
  end
end
