# Generated with JReleaser 1.3.0 at 2025-07-23T12:02:35.650855703Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.24.5/quarkus-cli-3.24.5.zip"
  version "3.24.5"
  sha256 "f24fbee0b1779cdb0ca1ca15c4a86f871c2016dce03ddc23ed74233257781257"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.24.5", output
  end
end
