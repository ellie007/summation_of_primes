require 'summation_of_primes'

describe SumOfPrimes do

  let(:number) { SumOfPrimes.new }

  xit "should filter out the primes from a sequence." do
    number.filter_primes_from_sequence(20).should == 77
  end

  xit "should filter out the primes from a sequence." do
    number.sum_primes(2000000).should == 142913828922
  end

  it "should filter out the primes from a sequence." do
    number.sum_primes(10000000).should == 3203324994356
  end

end

