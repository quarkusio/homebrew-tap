# Generated with JReleaser 1.1.0 at 2022-07-27T16:47:44.927428+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.11.1.Final/quarkus-cli-2.11.1.Final.zip"
  version "2.11.1.Final"
  sha256 "0bf30e2193f4226dd32768080072e617a0fdb07e3c3067a19daf6204df0247f9"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.11.1.Final", output
  end
end
