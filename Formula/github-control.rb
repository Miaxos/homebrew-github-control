# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GithubControl < Formula
  desc "Github control center for your pull requests" 
  homepage "https://github.com/Miaxos/github-control"
  url "https://github.com/Miaxos/github-control/archive/0.2.0.tar.gz"
  sha256 "d9390dea31c88603ef7e7da10d3aaff8975af947b197ed644929f338865ba1fb"
  version "0.2.0"
  depends_on "rust" => :build

  def install
    system "cargo", "build", "--verbose", "--release", "--bin", "github-control"
    bin.install "target/release/github-control"
  end
end
