# Generated with JReleaser 1.3.0 at 2025-02-12T17:35:46.513942342Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.18.3/quarkus-cli-3.18.3.zip"
  version "3.18.3"
  sha256 "1e03496b4544e5849b6cc3970518334d0266dea9b5139fb231a0cb89a5b5d309"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.18.3", output
  end
end
