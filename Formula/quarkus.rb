# Generated with JReleaser 0.10.0 at 2022-01-18T16:01:24.224525+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.6.2.Final/quarkus-cli-2.6.2.Final.zip"
  version "2.6.2.Final"
  sha256 "1c52755e9b26adc58f51d90cf922b8b53c33cc721e9d0ba17952adee710ec6d9"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.6.2.Final", output
  end
end
