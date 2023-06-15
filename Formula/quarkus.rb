# Generated with JReleaser 1.3.0 at 2023-06-15T20:42:27.696304+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.1.2.Final/quarkus-cli-3.1.2.Final.zip"
  version "3.1.2.Final"
  sha256 "525b5bfa8c00b155f2322fd41bd3e27734ae390208651cf8ea0c11fb306450ec"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.1.2.Final", output
  end
end
