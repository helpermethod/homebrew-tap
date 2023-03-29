# Generated with JReleaser 1.3.0 at 2023-03-29T07:42:55.509922Z
class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.0/p2e-1.0.0-osx-x86_64.zip"
  version "1.0.0"
  sha256 "53dc76bee3a08961904d1033c34fa4f276669f6463401655e9d503ae522cc8c7"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.0", output
  end
end
