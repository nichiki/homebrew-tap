class HireAi < Formula
  include Language::Python::Virtualenv

  desc "CLI to orchestrate AI agents (Claude, Codex, Gemini)"
  homepage "https://github.com/nichiki/hire-ai"
  url "https://files.pythonhosted.org/packages/e3/96/0499bcc067a9111ac482f19c6960e41cf1e7c0ef9f1a9611a2aa099354a0/hire_ai-0.1.5.tar.gz"
  sha256 "60691d0f9c3780819fc9ac29e9afa684e9881eaa676d0a64896b63eae2a13ccf"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "hire", shell_output("#{bin}/hire --version")
  end
end
