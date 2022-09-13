# Generated with JReleaser 1.2.0 at 2022-09-13T10:16:21.342262Z
class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v0.1.3/p2e-0.1.3-osx-x86_64.zip"
  version "0.1.3"
  sha256 "63e0ee979282dc7c010836ca405dac064136734db0e55c552c579f1b51b2dc7a"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "0.1.3", output
  end
end
