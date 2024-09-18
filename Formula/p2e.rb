# Generated with JReleaser 1.14.0 at 2024-09-18T06:52:48.627222Z

class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.8/p2e-1.0.8-osx-aarch_64.zip"
  version "1.0.8"
  sha256 "a24cae1de9cbd46a79181b55bc38b2bcf9ff7107e50dceb430a0c2f0e0f4ff04"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.8", output
  end
end
