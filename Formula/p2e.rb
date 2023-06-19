# Generated with JReleaser 1.6.0 at 2023-06-19T07:40:49.167729Z
class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.3/p2e-1.0.3-osx-x86_64.zip"
  version "1.0.3"
  sha256 "2e91f0870521fb300aceedced9e44bd7d752fc40a76b3cb5b5b164c6908efddc"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.3", output
  end
end
