require_relative 'apple'
RSpec.describe Apple do
  before(:each) do
    @apple1 = Apple.new
  end

  it "• Apple apple1 should have an age attribute with getter and setter methods" do
    @apple1.age=14
    expect(@apple1.age).to eq(14)
  end

  it "• Apple apple1 should have a height attribute with only a getter method. You should raise a NoMethodError if anyone tries to set the height attribute directly " do
    expect{@aaple1.height=15}.to raise_error(NoMethodError)
  end

  it "• Apple apple1 should have a height attribute with only a getter method. You should raise a NoMethodError if anyone tries to set the height attribute directly " do
    expect{@aaple1.apple_count=15}.to raise_error(NoMethodError)
  end

  context "should have a method year_gone_by" do
      before(:each) do
        @apple1.year_gone_by
      end

      it 'adds one year to the age' do
        expect(@apple1.age).to eq(1)
      end

      it 'increments height by 10%' do
        expect(@apple1.height).to eq(11)
      end

      context "increases the apple count by 2 within a range" do

        it "should not increase if the age is less than or equal to 3" do
          # current age is 3 since the before(:each) in the parent context
          2.times { @apple1.year_gone_by }
          expect(@apple1.apple_count).to eq(0)
        end

        it "should increase if the age is between 4 and 10" do
          # current age is 5 since the before(:each) in the parent context
          4.times { @apple1.year_gone_by }
          expect(@apple1.apple_count).to eq(4)
        end

        it "shound not increase if the age is greater than 10" do
          # current age is 11 since the before(:each) in the parent context
          10.times { @apple1.year_gone_by }
          expect(@apple1.apple_count).to eq(14)
        end

      end

      it "should have a method called pick_apples that takes all apples of the tree" do
            @apple1.pick_apples
            expect(@apple1.apple_count).to eq(0)
          end
        end
      end
