require('rspec')
require('rock_paper_scissors')

describe('String#beats?') do
  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq(true))
  end
  it("returns true if paper is the object and rock is the argument") do
    expect("paper".beats?("rock")).to(eq(true))
  end
  it("returns true if scissors it the object and paper is the argument") do
    expect("scissors".beats?("paper")).to(eq(true))
  end
  it("returns false if the object and argument are the same") do
    expect("rock".beats?("rock")).to(eq("It's a tie"))
    expect("paper".beats?("paper")).to(eq("It's a tie"))
    expect("scissors".beats?("scissors")).to(eq("It's a tie"))
  end
  it("returns false if scissors is the object and rock is the argument") do
    expect("scissors".beats?("rock")).to(eq(false))
  end
end
