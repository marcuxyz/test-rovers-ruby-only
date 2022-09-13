require_relative '../rovers'

describe Rovers do
  it 'should be return the correct position of rover' do
    coordinate = '1 2 N'
    positions = 'LM'
    
    expect(Rovers.new.position(coordinate, positions)).to eq('0 2 W')
  end

  it 'should be return the correct position of rover' do
    coordinate = '2 1 N'
    positions = 'RM'
    
    expect(Rovers.new.position(coordinate, positions)).to eq('3 1 E')
  end

  it 'should be return the correct position of rover' do
    coordinate = '1 2 N'
    positions = 'LLM'
    
    expect(Rovers.new.position(coordinate, positions)).to eq('1 1 S')
  end

  it 'should be return the correct position of rover' do
    coordinate = '0 0 S'
    positions = 'LMLMMLMRRMMMM'
    
    expect(Rovers.new.position(coordinate, positions)).to eq('4 2 E')
  end
 
  it 'should be return the correct position of rover' do
    coordinate = '1 2 N'
    positions = 'LLLM'
    
    expect(Rovers.new.position(coordinate, positions)).to eq('2 2 E')
  end

  it 'should be return the correct position of rover' do
    coordinate = '1 2 N'
    positions = 'LMLM'
    
    expect(Rovers.new.position(coordinate, positions)).to eq('0 1 S')
  end

  it 'should be return the correct position of rover' do
    coordinate = '1 2 N'
    positions = 'LMLMLMLMM'
    
    expect(Rovers.new.position(coordinate, positions)).to eq('1 3 N')
  end

  it 'should be return the correct position of rover' do
    coordinate = '3 3 E'
    positions = 'MMRMMRMRRM'
    
    expect(Rovers.new.position(coordinate, positions)).to eq('5 1 E')
  end
end