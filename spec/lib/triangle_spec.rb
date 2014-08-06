require 'rspec'
require './lib/shape'
require './lib/triangle'

describe Triangle do
  let(:base) { 9 }
  let(:height) { 8 }
  subject { Triangle.new(base, height) }
  it 'should be a Triangle' do
    expect(subject).to be_a(Triangle)
  end

  it 'should be a Shape' do
    expect(subject).to be_a(Shape)
  end

  describe '#initialize' do
    it 'takes two argument, the size of the base & height' do
      expect(subject).to be
    end
  end

  describe '#base' do
    context 'for a triangle with a base of 9' do
      let(:base) { 9 }
      it 'returns the length of the base' do
        expect(subject.base).to eq(base)
      end
    end

    context 'for a triangle with a base of 3' do
      let(:base) { 3 }
      it 'returns the length of the base' do
        expect(subject.base).to eq(base)
      end
    end

    context 'for a triangle with a base of 3.75' do
      let(:base) { 3.75 }
      it 'returns the length of the base' do
        expect(subject.base).to eq(base)
      end
    end
  end

  describe '#height' do
    context 'for a triangle with a height of 8' do
      let(:height) { 8 }
      it 'returns the length of the height' do
        expect(subject.height).to eq(height)
      end
    end

    context 'for a triangle with a height of 7' do
      let(:height) { 7 }
      it 'returns the length of the height' do
        expect(subject.height).to eq(height)
      end
    end

    context 'for a triangle with a height of 6.75' do
      let(:height) { 6.75 }
      it 'returns the length of the height' do
        expect(subject.height).to eq(height)
      end
    end
  end

  describe '#area' do
    context 'for a triangle with a base of 9 & height of 8' do
      let(:base) { 9 }
      let(:height) { 8 }
      it 'returns the area of the triangle' do
        expect(subject.area).to eq(36)
      end
    end

    context 'for a triangle with a base of 3 & height of 7' do
      let(:base) { 3 }
      let(:height) { 7 }
      it 'returns the area of the triangle' do
        expect(subject.area).to eq(10.5)
      end
    end

    context 'for a triangle with a base of 3.25 & height of 6.75' do
      let(:base) { 3.25 }
      let(:height) { 6.75 }
      it 'returns the area of the triangle' do
        expect(subject.area).to be_within(0.01).of(10.97)
      end
    end
  end
end
