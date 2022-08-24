# Generated with JReleaser 1.1.0 at 2022-08-24T14:08:55.066194+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.11.3.Final/quarkus-cli-2.11.3.Final.zip"
  version "2.11.3.Final"
  sha256 "7e91f9d278d93b33ad78bffde2188ec6288f8a33083adc1620a9310abfb3a070"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.11.3.Final", output
  end
end
