require 'summation_of_primes'

describe SumOfPrimes do

  let(:number) { SumOfPrimes.new }

  it "should filter out the primes from a sequence." do
    number.filter_primes_from_sequence(20).should == 77 #[true, true, true, true, false, true, false, true, false, false, false, true, false, true, false, false, false, true, false, true, false]
  end

  it "should filter out the primes from a sequence." do
    number.filter_primes_from_sequence(2000000).should == 142913828922
  end

  # it 'return true if a number is prime' do
  #   number.is_prime?(2).should == true
  # end
  # it 'return true if a number is prime' do
  #   number.is_prime?(3).should == true
  # end
  # it "return false if a number is prime" do
  #   number.is_prime?(4).should == false
  # end
  # it 'return true if a number is prime' do
  #   number.is_prime?(7).should == true
  # end
  # it "return false if a number is prime" do
  #   number.is_prime?(8).should == false
  # end
  # it "return false if a number is prime" do
  #   number.is_prime?(9).should == false
  # end

  # it "return the sum of all primes up to two million" do
  #   number.sum_of_primes_from_2_to(10).should == 17
  # end

  # it "return the sum of all primes up to two million" do
  #   number.sum_of_primes_from_2_to(2000000).should == 'happy'
  # end

end

