require 'book_search'

describe BookSearch do

  describe'#get_title' do

    it 'should get a title' do

       allow($stdin).to receive(:gets).and_return('harry potter')
       title = $stdin.gets
       expect(title).to eq('harry potter')

    end

  end


end
