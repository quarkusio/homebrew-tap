# Generated with JReleaser 1.3.0 at 2022-11-09T13:55:34.32203+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.14.0.Final/quarkus-cli-2.14.0.Final.zip"
  version "2.14.0.Final"
  sha256 "cc9afcbabd9dbd29b907c18989b38ffc1abcbb83e6c6105c3d544e35cc842bfe"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.14.0.Final", output
  end
end
