# Generated with JReleaser 1.3.0 at 2026-02-04T16:02:45.416277388Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.31.2/quarkus-cli-3.31.2.zip"
  version "3.31.2"
  sha256 "3ca738f93ad49cbe8854ef7d87a60e8ef6bfa0b4fade4bf841e38e6058360857"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.31.2", output
  end
end
