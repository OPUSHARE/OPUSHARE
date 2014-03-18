require 'spec_helper'

describe Comment do
  it ":contentがあるときvalid" do
    comment = Comment.new(
      content: "abcdefg"
    )
    expect(comment).to be_valid
  end
  it ":contentがないときinvalid" do
    expect(Comment.new(content: nil)).to have(1).errors_on(:content)
  end
end
