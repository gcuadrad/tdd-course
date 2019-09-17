require_relative 'student'

RSpec.describe Student do
  # describe 'instance methods basic way' do
  #   it 'should respond to #first_name' do
  #     student =  Student.new('John', 'Doe')
  #     expect(student).to respond_to(:first_name)
  #   end
  #
  #   it 'should respond to #last_name' do
  #     student =  Student.new('John', 'Doe')
  #     expect(student).to respond_to(:last_name)
  #   end
  #
  #   it 'should respond to #student_fullname' do
  #     student =  Student.new('John', 'Doe')
  #     expect(student).to respond_to(:last_name)
  #   end
  # end
  #
  # describe 'instance methods before do way' do
  #   before do
  #     @student =  Student.new('John', 'Doe')
  #   end
  #
  #   it 'should respond to #first_name' do
  #     expect(@student).to respond_to(:first_name)
  #   end
  #
  #   it 'should respond to #last_name' do
  #     expect(@student).to respond_to(:last_name)
  #   end
  #
  #   it 'should respond to #student_fullname' do
  #     expect(@student).to respond_to(:last_name)
  #   end
  # end

  describe 'instance methods subject way' do
    subject { Student.new('John','Doe') }
    it { respond_to(:first_name) }
    it { respond_to(:last_name) }
    it { respond_to(:student_fullname) }
  end

  describe 'total number of student created' do
    it 'should have students in total' do
      Student.new('John', 'Doe')
      Student.new('Jane','Doe')

      expect(Student.total_count).to eq(2)
    end
  end
end
