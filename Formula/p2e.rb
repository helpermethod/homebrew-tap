# Generated with JReleaser 1.17.0 at 2025-04-30T09:11:43.400318Z

class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.12/p2e-1.0.12-osx-x86_64.zip"
  version "1.0.12"
  sha256 "25dd88a40b054a289f87c3a0586f891941c22685d4a048835d3670419cbf0475"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.12", output
  end
end
