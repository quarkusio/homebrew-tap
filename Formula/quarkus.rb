# Generated with JReleaser 1.3.0 at 2026-08-19T14:49:21.744140279Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.38.3/quarkus-cli-3.38.3.zip"
  version "3.38.3"
  sha256 "f4cae021c7062d467e5ff8fabb7dc27dfc7c0c1b947cee149eb03ce2b505ec09"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.38.3", output
  end
end
