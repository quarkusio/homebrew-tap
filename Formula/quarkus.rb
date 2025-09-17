# Generated with JReleaser 1.3.0 at 2025-09-17T15:22:14.72542477Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.26.4/quarkus-cli-3.26.4.zip"
  version "3.26.4"
  sha256 "01bfccda8450b2da1a308c876235f15c4a0e571008bc6345eb77e6abcbc05d56"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.26.4", output
  end
end
