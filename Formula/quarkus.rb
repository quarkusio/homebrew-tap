# Generated with JReleaser 1.3.0 at 2025-08-28T11:23:09.606859838Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.26.0/quarkus-cli-3.26.0.zip"
  version "3.26.0"
  sha256 "04f1ab05717757d4725046aae9d5fed398d7426836bb5f21f020db9130fd4275"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.26.0", output
  end
end
