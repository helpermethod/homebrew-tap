# Generated with JReleaser 1.6.0 at 2023-06-19T07:17:32.358259Z
class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.2/p2e-1.0.2-osx-x86_64.zip"
  version "1.0.2"
  sha256 "9c0791bd5f1ea5688f6b14cca01126c32476cf809c94fd929e14f1ba4672617d"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.2", output
  end
end
