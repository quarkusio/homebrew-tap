# Generated with JReleaser 1.3.0 at 2026-03-25T16:02:53.215617395Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.33.1/quarkus-cli-3.33.1.zip"
  version "3.33.1"
  sha256 "360cd903cc06c7dc97b9d25bba4e1cf34164009927783b53a7ef4acc43dbbca2"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.33.1", output
  end
end
