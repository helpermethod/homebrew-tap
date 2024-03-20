# Generated with JReleaser 1.8.0 at 2024-03-20T10:33:35.21831Z
class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.5/p2e-1.0.5-osx-x86_64.zip"
  version "1.0.5"
  sha256 "f0c4676876242c845489dd53c043f8c59dd6af5da8907e8743665ba383eea358"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.5", output
  end
end
