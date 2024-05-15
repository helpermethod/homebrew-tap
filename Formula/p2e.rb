# Generated with JReleaser 1.8.0 at 2024-05-15T10:10:16.131843Z
class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.6/p2e-1.0.6-osx-aarch_64.zip"
  version "1.0.6"
  sha256 "fa2f1c70e344ea0984b2ff22742c852904cbbd7f0520970ac7d5ae988877dec0"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.6", output
  end
end
