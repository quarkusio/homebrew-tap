# Generated with JReleaser 1.0.0-M3 at 2022-06-09T12:58:26.774401+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.7.6.Final/quarkus-cli-2.7.6.Final.zip"
  version "2.7.6.Final"
  sha256 "b6ef47b7e68ef6baa82914568508469bebaed9c0f1d1f7976a9ab8067454e697"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.7.6.Final", output
  end
end
