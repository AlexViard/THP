require_relative '../lib/caesar_cipher'

describe "caesar_cipher" do
it "normal alphabet" do
 expect(caesar_cipher('a',5)).to eq ('f')
 expect(caesar_cipher('a',20)).to eq ('u')
end
it "if we are at the end of alphabet" do
  expect(caesar_cipher('z',2)).to eq ('b')
end
end
describe "word transform" do
 it " word transform with space no transform" do
 expect(caesar_cipher("abc def",5)). to eq ("fgh ijk")
 end
 it " if the word is Z he will comeback to A?" do
 expect(caesar_cipher("What a string!",5)). to eq ("Bmfy f xywnsl!")
 end
end
