class HireAi < Formula
  include Language::Python::Virtualenv

  desc "CLI to orchestrate AI agents (Claude, Codex, Gemini)"
  homepage "https://github.com/nichiki/hire-ai"
  url "https://files.pythonhosted.org/packages/7c/a5/1489a8d4c0bcc2bcf4a6c81e05125abe205162253f8e0b00de46c49525be/hire_ai-0.1.4.tar.gz"
  sha256 "c5de6c24383a8574d24fa5b0cde2421313f70e682638703888e2171d43a140be"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "hire", shell_output("#{bin}/hire --version")
  end
end
