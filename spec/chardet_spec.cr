require "../src/chardet"

require "./spec_helper"

describe Chardet do
  it "detects an encoding" do
    Chardet.detect("♥".encode("utf-8")).should eq({encoding: "UTF-8"})
  end
end
