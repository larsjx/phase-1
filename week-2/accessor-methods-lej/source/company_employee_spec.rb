require_relative 'company_employee'

#Every method should be tested!
describe Employee do
  let(:shereef) { Employee.new("Shereef Bishay", "Master Of The Bootiverse") }

  describe '#name' do
    #Example test
    it 'should be readable' do
      expect(shereef.name).to eq("Shereef Bishay")
    end

  end
end

#Every method should be tested!
describe Company do
end

