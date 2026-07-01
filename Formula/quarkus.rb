# Generated with JReleaser 1.3.0 at 2026-07-01T17:12:21.134885466Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.37.1/quarkus-cli-3.37.1.zip"
  version "3.37.1"
  sha256 "ce1aa819093d4409f904cb996815cfe1066d3e85064dfefcb3e2957a7e414250"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.37.1", output
  end
end
