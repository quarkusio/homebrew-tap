# Generated with JReleaser 1.3.0 at 2023-08-29T16:30:05.988507+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.3.1/quarkus-cli-3.3.1.zip"
  version "3.3.1"
  sha256 "e2a02d2940246da3ac530e4c814b903cb712eaad2f841601ace6ca7a041667a1"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.3.1", output
  end
end
