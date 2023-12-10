require './caesar_cipher'

describe '#caesar_cipher' do
  it 'should correctly shift letters by given number' do
    expect(caesar_cipher('abc', 1)).to eq('bcd')
  end
  it 'should handle upperacase and lowercase letters' do
    expect(caesar_cipher('AbC', 3)).to eq('DeF')
    expect(caesar_cipher('xYZ', 10)).to eq('hIJ')
  end
  
  it 'should handle wrapping around the alphabet' do
    expect(caesar_cipher('xyz', 5)).to eq('cde')
    expect(caesar_cipher('zab', 1)).to eq('abc')
  end
  
  it 'should handle negative numbers' do
    expect(caesar_cipher('abc', -2)).to eq('yza')
    expect(caesar_cipher('ABc', -5)).to eq('VWx')
  end

  it 'should handle numbers greater than 26' do
    expect(caesar_cipher('ABc', 30)).to eq('EFg')
    expect(caesar_cipher('XYZ', 60)).to eq('FGH')
  end

  it 'should handle empty input string' do
    expect(caesar_cipher('', 5)).to eq('')
  end

  it 'should handle non alphabet input string' do
    expect(caesar_cipher('45.!$', 5)).to eq('45.!$')
  end
end