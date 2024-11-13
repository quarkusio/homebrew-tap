# Generated with JReleaser 1.3.0 at 2024-11-13T17:27:20.824244553Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.16.3/quarkus-cli-3.16.3.zip"
  version "3.16.3"
  sha256 "a84adadcb56a3625c6d6063c5d09c0d7233e77b12a58f6802ae62e071c759e90"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.16.3", output
  end
end
