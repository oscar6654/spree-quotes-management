require 'spec_helper'

describe Spree::QuotePresenter do
  include Spree::BaseHelper
  let(:quote) { create(:quote) }

  context "#present" do
    it "return decorated author_name" do
      expect(present(quote).author_name).to eq('Anonymous')
    end

    it "return decorated published_at" do
      quote.publish
      expect(present(quote).published_at).to eq(pretty_time(quote.published_at))
    end

    it "return decorated rank" do
      expect(present(quote).rank).to eq('-')
    end
  end

end
