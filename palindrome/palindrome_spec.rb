require_relative 'palindrome'

RSpec.describe Palindrome do

  context 'test word is a palindrome' do
    it 'should read the same fowards as backwards' do
      test_word = "Madam"
      result = Palindrome.palindrome? test_word
      expect(result).to be_truthy
    end
  end

  context 'test word is not a palindrome' do
    it 'should not read the same fowards as backwards' do
      test_word = "Food"
      result = Palindrome.palindrome?(test_word)
      expect(result).to be_falsey
    end
  end
end
