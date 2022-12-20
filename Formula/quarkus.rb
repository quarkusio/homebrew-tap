# Generated with JReleaser 1.3.0 at 2022-12-14T18:11:38.917208+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.15.0.Final/quarkus-cli-2.15.0.Final.zip"
  version "2.15.0.Final"
  sha256 "34fdd595a1d5abce727f491e4bfd64814b1c403a57a98a0f1ad3b536d87bf6c1"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.15.0.Final", output
  end
end
