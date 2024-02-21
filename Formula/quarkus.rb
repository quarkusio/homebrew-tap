# Generated with JReleaser 1.3.0 at 2024-02-21T17:22:01.835918201Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.7.4/quarkus-cli-3.7.4.zip"
  version "3.7.4"
  sha256 "e6dbbf06c3c0736a0793d0d61e3737c8e5595910d2985e5fdef227621cfd1ea4"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.7.4", output
  end
end
