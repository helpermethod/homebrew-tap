# Generated with JReleaser 1.1.0 at 2022-08-03T15:59:46.881952Z
class P2e < Formula
  desc "Convert Spring application property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v0.0.8/p2e-0.0.8-osx-x86_64.zip"
  version "0.0.8"
  sha256 "913807deb125179ba51e2dd2d41ef164b383bdb3175325062061b4b1c1fd4f95"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "0.0.8", output
  end
end
