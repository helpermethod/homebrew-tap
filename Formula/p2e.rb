# Generated with JReleaser 1.6.0 at 2023-06-16T13:06:54.108666Z
class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.1/p2e-1.0.1-osx-x86_64.zip"
  version "1.0.1"
  sha256 "51368de9de04a7f97f8327e7ba3195bd4680df8f61a687947bda2603fb6fb798"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.1", output
  end
end
