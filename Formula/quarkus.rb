# Generated with JReleaser 1.0.0-M3 at 2022-03-09T21:41:27.437642+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.7.4.Final/quarkus-cli-2.7.4.Final.zip"
  version "2.7.4.Final"
  sha256 "fe70a22500c469b790ae505967fd2856b3851c2dad632a43b0d978a0c5dd0ae5"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.7.4.Final", output
  end
end
