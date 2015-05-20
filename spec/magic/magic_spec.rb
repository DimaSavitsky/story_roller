require 'rails_helper'

RSpec.describe AntiMagicSandbox do

  subject { described_class.new(Game.create) }

  it 'allows for refinement to work in controller' do
    expect(subject.working_in_sandbox).to be_truthy
  end

  it 'prevents the monkey-patching of original methods' do
    expect(subject.game.original_method).to eq :original
  end

end
