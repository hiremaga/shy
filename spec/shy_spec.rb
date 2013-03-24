require 'spec_helper'

describe Shy do
  shared_examples_for 'a Shy class' do
    it { should respond_to(:shy) }

    it "can be instantiated with a hash of its attributes' values" do
      shy_instance = subject.new(foo: 'Foo')
      shy_instance.send(:foo).should eq('Foo')
      shy_instance.send(:bar).should be_nil

      expect {
        shy_instance.send(:bar=, 'Bar')
      }.to change { shy_instance.send(:bar) }.to('Bar')
    end

    its(:private_instance_methods) { should include(:foo, :foo=, :bar, :bar=) }

    it "allows its accessors to be optionally publicized" do
      expect {
        subject.class_eval do
          public :foo
          public :bar=
        end
      }.to change { subject.public_instance_methods(false) }.to([:foo, :bar=])
    end
  end

  context 'when using the deprecated Struct inspired syntax' do
    subject do
      Shy.new(:foo, :bar)
    end

    before do
      Shy.should_receive(:warn)
    end

    it { should be_a(Class) }

    it_behaves_like 'a Shy class'
  end

  context 'when using the mixin' do
    subject do
      Class.new do
        include Shy

        shy :foo, :bar
      end
    end

    it_behaves_like 'a Shy class'
  end
end
