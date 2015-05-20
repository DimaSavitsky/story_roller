class AntiMagicSandbox
  using AntiMagicShield

  def self.modify(object, modifications_text)
    object.instance_eval(modifications_text)
  end

end
