# Generated with JReleaser 1.8.0 at 2023-09-29T13:38:19.169946Z
class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.4/p2e-1.0.4-osx-x86_64.zip"
  version "1.0.4"
  sha256 "5e230f135f76a7af962da3ee727afc993258e5b952f9106e6f06706eb42a6bbc"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.4", output
  end
end
