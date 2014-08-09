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
        expect(subject.area).to be_within(0.005).of(10.97)
      end
    end
  end

  describe '#right_angle' do
    context 'for a triangle with a base of 9 & height of 8'
    let(:base) { 9 }
    let(:height) { 8 }
    it 'returns the length of the right angle' do
      expect(subject.right_angle).to be_within(0.005).of(12.04)
    end

    context 'for a triangle with a base of 3 & height of 7' do
      let(:base) { 3 }
      let(:height) { 7 }
      it 'returns the length of the right angle' do
        expect(subject.right_angle).to be_within(0.005).of(7.62)
      end
    end

    context 'for a triangle with a base of 3.25 & height of 6.75' do
      let(:base) { 3.25 }
      let(:height) { 6.75 }
      it 'returns the length of the right angle' do
        expect(subject.right_angle).to be_within(0.005).of(7.49)
      end
    end
  end

  describe '#perimeter' do
    context 'a right triangle a base of 9 height of 8 & hypotenuse of 12.04'
    let(:base) { 9 }
    let(:height) { 8 }
    let(:right_angle) { 12.04 }
    it 'returns the perimeter of a triangle' do
      expect(subject.perimeter).to be_within(0.005).of(29.04)

    end

    context 'a right triangle a base of 3 height of 7 & hypotenuse of 7.62' do
      let(:base) { 3 }
      let(:height) { 7 }
      let(:right_angle) { 7.62 }
      it 'returns the perimeter of a triangle' do
        expect(subject.perimeter).to be_within(0.005).of(17.62)
      end
    end

    context 'right triangle base of 3.25 height of 6.75 & hypotenuse of 7.49' do
      let(:base) { 3.25 }
      let(:height) { 6.75 }
      let(:right_angle) { 7.49 }
      it 'returns the perimeter of a triangle' do
        expect(subject.perimeter).to be_within(0.005).of(17.49)
      end
    end

  end

end
