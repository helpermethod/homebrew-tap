# Generated with JReleaser 1.17.0 at 2025-03-25T08:25:13.919325Z

class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.11/p2e-1.0.11-osx-x86_64.zip"
  version "1.0.11"
  sha256 "78009af6b06aa12f8fd2dc00939962cdeff36dc0ab7cf8d9e03519bfc501532b"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.11", output
  end
end
