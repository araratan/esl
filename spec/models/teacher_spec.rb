require 'rails_helper'

describe Teacher do
  it "returns fullname" do
    expect(Teacher.fullname(1)).to eq "John Doe"
  end
end
