class HireAi < Formula
  include Language::Python::Virtualenv

  desc "CLI to orchestrate AI agents (Claude, Codex, Gemini)"
  homepage "https://github.com/nichiki/hire-ai"
  url "https://files.pythonhosted.org/packages/be/75/bdd7cb0090fe42a347a787ee8a823073dd8f11ed3c1efff495f47516b91d/hire_ai-0.1.2.tar.gz"
  sha256 "90d96ab797a338dafb716cc42917ad01e428e604163e1e9f28d1cb438ff4187e"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "hire", shell_output("#{bin}/hire --version")
  end
end
