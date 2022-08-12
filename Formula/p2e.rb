# Generated with JReleaser 1.1.0 at 2022-08-12T11:10:54.352577Z
class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v0.1.2/p2e-0.1.2-osx-x86_64.zip"
  version "0.1.2"
  sha256 "62e51742590b83af6b8e153da7f2911e7947338b13e2e6289bcef67f2a183e99"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "0.1.2", output
  end
end
