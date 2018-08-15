require 'rails_helper'
require "cancan/matchers"

describe "Admin" do
  describe "abilities" do
    subject(:ability) { Ability.new(admin) }

    context "when is an admin" do
      let(:admin){ FactoryBot.create(:admin) }

      it { is_expected.to be_able_to(:manage, :all) }
    end
  end
end

describe "User" do
  describe "abilities" do
    subject(:ability) { Ability.new(user) }

    context "when is a user" do
      let(:user){ FactoryBot.create(:user) }
      let(:user2){ FactoryBot.create(:user, id: 15, first_name: "Dave", last_name: "Test") }

      it { is_expected.to be_able_to(:read, Product) }
      it { is_expected.to be_able_to(:read, Order) }
      it { is_expected.to be_able_to(:read, Comment) }
      it { is_expected.to be_able_to(:manage, User, params: { id: user }) }

    end
  end
end
