# Generated with JReleaser 1.3.0 at 2023-07-05T15:31:14.410227+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.2.0.Final/quarkus-cli-3.2.0.Final.zip"
  version "3.2.0.Final"
  sha256 "0797dd4b5313ce9677cfa4f77ad154a5b93d20dd189fd7200e0a9533b56ea91c"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.2.0.Final", output
  end
end
