# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GithubControl < Formula
  desc "Github control center for your pull requests" 
  homepage "https://github.com/Miaxos/github-control"
  url "https://github.com/Miaxos/github-control/archive/0.2.0.tar.gz"
  sha256 "3bbaf188fa4014a57596c4d4f928b75bdf42c058220424ae46b94f3a36b61f81"
  version "0.2.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "github-control"
    bin.install "target/release/github-control"
  end
end
