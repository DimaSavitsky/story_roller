module AntiMagicShield

  refine Class do
    def define_method(*)
      warn 'You are not allowed to define methods on any Class.'
    end
  end

  refine Method do
    def call(*)
      warn 'You are calling some method.'
      super
    end
  end

  refine Game do
    def method_added(method_name)
      warn 'Aha, you added a method'
    end
  end

end
