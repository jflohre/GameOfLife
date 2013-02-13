

class Cell
	attr_accessor :x, :y, :neighbors

	def initialize(x, y, neighbors)		
		@x = x
		@y = y
		@neighbors = neighbors.to_i
		
	end

	def alive
		if neighbors < 2 
			dead
		elsif neighbors > 3
			dead
		elsif neighbors == 3
			born
		else
			true
		end
	end
	def born
		true
	end

	def dead
		 true
	end

end

describe 'Cell' do
	it 'should return true if neighbors < 2' do
		cell = Cell.new(4,5,1)
		cell.dead.should == true
	end
	it 'should return true if neighbors >3' do
		cell = Cell.new(4,5,5)
		cell.dead.should == true
	end
	it 'should return true if neighbors =2 or 3' do
	cell=Cell.new(4,5,2)
	cell.alive.should == true
	end
	it "should be born if neighbors =3" do
	cell = Cell.new(4,5,3)
	cell.born.should == true
end
end