# Generated with JReleaser 1.3.0 at 2024-06-19T14:32:07.120101064Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.11.3/quarkus-cli-3.11.3.zip"
  version "3.11.3"
  sha256 "472759f3427b493bf12b2089228a445b93154a922ba17dd4154a704f5e4f9599"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.11.3", output
  end
end
