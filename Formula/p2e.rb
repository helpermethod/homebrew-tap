# Generated with JReleaser 1.8.0 at 2024-06-19T07:22:08.871135Z
class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.7/p2e-1.0.7-osx-aarch_64.zip"
  version "1.0.7"
  sha256 "fbec01268d9b21842e73292e8b1279bf20cd5f82ca52410282ed7a103a76f3d2"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.7", output
  end
end
