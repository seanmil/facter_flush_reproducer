Facter.add(:fact2) do
  setcode do
    fact1 = Facter.fact(:fact1).value

    fact2 = "Fact 2 value is '#{fact1}'"
    fact2
  end
end
