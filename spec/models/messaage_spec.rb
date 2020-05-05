require 'rails_helper'
  describe Message do
    describe '#create' do

      #1 imageがなくても、ログインできる。
      it "is valid with a message, point_id, 
      user_id, wave, windy, set, population, expected" do
        message = build(:message)
        expect(message).to be_valid
      end
      #2 messageがなくても、ログインできる。
      it "is valid with a image, point_id, 
      user_id, wave, windy, set, population, expected" do
      message = build(:message)
        expect(message).to be_valid
      end

      #3 point_idがからの場合不可
      it "is invalid without a point_id" do
        message = build(:message, point_id: "")
        message.valid?
      end

      #4 user_idがからの場合不可
      it "is invalid without a user_id" do
        message = build(:message, user_id: "")
        message.valid?
      end
      #5 waveがからの場合不可
      it "is invalid without a wave" do
        message = build(:message, wave: "")
        message.valid?
      end
      #6 setがからの場合不可
      it "is invalid without a set" do
        message = build(:message, set: "")
        message.valid?
      end
      #7 windyがからの場合不可
      it "is invalid without a windy" do
        message = build(:message, windy: "")
        message.valid?
      end
      #8 populationがからの場合不可
      it "is invalid without a population" do
        message = build(:message, population: "")
        message.valid?
      end
      #9 expectedがからの場合不可
      it "is invalid without a expected" do
        message = build(:message, expected: "")
        message.valid?
      end
      

    end
  end