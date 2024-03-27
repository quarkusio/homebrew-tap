# Generated with JReleaser 1.3.0 at 2024-03-27T15:04:00.019267383Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.9.1/quarkus-cli-3.9.1.zip"
  version "3.9.1"
  sha256 "17e24f3e1c3ee4b6e1db9a01123d1a148da7f3fa09f33fa4f8c536e4b92d9ce3"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.9.1", output
  end
end
