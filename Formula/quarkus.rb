# Generated with JReleaser 1.3.0 at 2026-03-18T17:58:00.867123404Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.32.4/quarkus-cli-3.32.4.zip"
  version "3.32.4"
  sha256 "ec30b590e234ebdafac267dbc079e5d65d1cc010fb362830e24332e96137f074"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.32.4", output
  end
end
