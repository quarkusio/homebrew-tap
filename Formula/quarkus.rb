# Generated with JReleaser 1.0.0 at 2022-06-22T11:03:37.056273+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.10.0.Final/quarkus-cli-2.10.0.Final.zip"
  version "2.10.0.Final"
  sha256 "d2ecee909fa8b00f0acce917940569c8d3b071c8dcc76adc007ab38a2338337e"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.10.0.Final", output
  end
end
