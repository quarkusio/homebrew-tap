# Generated with JReleaser 1.1.0 at 2022-09-13T18:56:59.722551+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.12.2.Final/quarkus-cli-2.12.2.Final.zip"
  version "2.12.2.Final"
  sha256 "52f6acdc177612bd22df971b8122ca2f3a72f177e17f3a8badaf5aab14d87dce"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.12.2.Final", output
  end
end
