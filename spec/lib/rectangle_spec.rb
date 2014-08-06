require 'rspec'
require './lib/shape'
require './lib/rectangle'

describe Rectangle do
  let(:width) { 10 }
  let(:height) { 8 }
  subject { Rectangle.new(width, height) }
  it 'should be a Rectangle' do
    expect(subject).to be_a(Rectangle)
  end

  it 'should be a Shape' do
    expect(subject).to be_a(Shape)
  end

  describe '#initialize' do
    it 'takes two argument, the length of the width & height' do
      expect(subject).to be
    end
  end

  describe '#width' do
    context 'for a rectangle width of 10' do
      let(:width) { 10 }
      it 'returns the length of the width' do
        expect(subject.width).to eq(width)
      end
    end

    context 'for a rectangle width of 5.75' do
      let(:width) { 5.75 }
      it 'returns the length of the width' do
        expect(subject.width).to eq(width)
      end
    end

    context 'for a rectangle width of 9.7' do
      let(:width) { 9.7 }
      it 'returns the length of the width' do
        expect(subject.width).to eq(width)
      end
    end
  end

  describe '#height' do
    context 'for a rectangle with a height of 8' do
      let(:height) { 8 }
      it 'returns the length of the height' do
        expect(subject.height).to eq(height)
      end
    end

    context 'for a rectangle with a height of 3.75' do
      let(:height) { 3.75 }
      it 'returns the length of the height' do
        expect(subject.height).to eq(height)
      end
    end

    context 'for a rectangle with a height of 10.7' do
      let(:height) { 10.7 }
      it 'returns the length of the height' do
        expect(subject.height).to eq(height)
      end
    end
  end

  describe '#area' do
    context 'for a rectangle with a width of 10 & height of 8' do
      let(:width) { 10 }
      let(:height) { 8 }
      it 'returns the area of a rectangle' do
        expect(subject.area).to eq(80)
      end
    end

    context 'for a rectangle with a width of 5.75 & height of 3.75' do
      let(:width) { 5.75 }
      let(:height) { 3.75 }
      it 'returns the area of a rectangle' do
        expect(subject.area).to be_within(0.1).of(21.6)
      end
    end

    context 'for a rectangle with a width of 9.7 & height of 10.7' do
      let(:width) { 9.7 }
      let(:height) { 10.7 }
      it 'returns the area of a rectangle' do
        expect(subject.area).to be_within(0.01).of(103.79)
      end
    end
  end

  describe 'perimeter' do
    context 'for a rectangle with equal width of 10 and height 8' do
      let(:width) { 10 }
      let(:height) { 8 }
      it ' returns the perimeter of a rectangle' do
        expect(subject.perimeter).to eq(36)
      end
    end

    context 'for a rectangle with equal width of 5.75 and height 3.75' do
      let(:width) { 5.75 }
      let(:height) { 3.75 }
      it ' returns the perimeter of a rectangle' do
        expect(subject.perimeter).to eq(19)
      end
    end

    context 'for a rectangle with equal width of 9.7 and height 10.7' do
      let(:width) { 9.7 }
      let(:height) { 10.7 }
      it ' returns the perimeter of a rectangle' do
        expect(subject.perimeter).to eq(40.8)
      end
    end
  end

end
