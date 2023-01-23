require "rspec"
require_relative "gpa_calculator"

RSpec.describe GpaCalculator do
  describe "#gpa" do
    subject { described_class.new(name, grades).gpa }
    let(:name) { %w[Andy Dan Emma Olivia Ollie Mark].sample }

    context "valid grades provided" do
      let(:grades) { %w[A B+ C] }

      it "returns GPA score" do
        expect(subject).to eq(3.1)
      end
    end

    context "invalid grades provided" do
      let(:grades) { %w[X Y Z] }

      it "returns 0.0" do
        expect(subject).to eq(0.0)
      end
    end

    context "valid and invalid grades provided" do
      let(:grades) { %w[X B- D] }

      it "returns GPA score" do
        expect(subject).to eq(1.2)
      end
    end
  end

  describe "#announcement" do
    subject { described_class.new(name, grades).announcement }
    let(:name) { %w[Andy Dan Emma Olivia Ollie Mark].sample }
    let(:grades) { %w[A B+ C] }

    it "returns string with name and GPA score" do
      expect(subject).to eq("#{name} scored an average of 3.1")
    end
  end
end