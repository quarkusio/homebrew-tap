# Generated with JReleaser 1.3.0 at 2025-01-22T17:05:43.656217535Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.17.8/quarkus-cli-3.17.8.zip"
  version "3.17.8"
  sha256 "f38c5e10c750c7b022fb51347edc74f9ea1df39e130a06ec92289971bf430dd9"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.17.8", output
  end
end
