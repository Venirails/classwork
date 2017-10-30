xml.instruct!
xml.banks do
@banks.each do |bank|
    xml.bank do
      xml.name bank.name
      xml.branch bank.branch
      xml.address  bank.address
    end
end
end