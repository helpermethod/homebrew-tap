# Generated with JReleaser 1.17.0 at 2025-03-24T13:08:13.277992Z

class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.9/p2e-1.0.9-osx-aarch_64.zip"
  version "1.0.9"
  sha256 "3b0462d057531bb8a4527bc4bd2f788c8191a1c42014116c50feda158b1bc077"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.9", output
  end
end
