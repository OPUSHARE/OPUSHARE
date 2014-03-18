require 'spec_helper'

describe Post do
  it ":title, :name, :descriptionがあればvalid" do
    post = Post.new(
      title: "aaaaa",
      name: "kaito",
      description: "bbbb"
    )
    expect(post).to be_valid
  end
  it ":titleがなければinvalid" do
    expect(Post.new(title: nil)).to have(1).errors_on(:title)
  end
  it ":nameがなければinvalid" do
    expect(Post.new(name: nil)).to have(1).errors_on(:name)
  end
  it ":descriptionがなければinvalid" do
    expect(Post.new(description: nil)).to have(1).errors_on(:description)
  end
  it ":url, :tag, :imageがなくてもvalid" do
    post = Post.new(
      url: nil,
      tag: nil,
      image: nil
    )
    expect(post).to be_invalid
  end
end
