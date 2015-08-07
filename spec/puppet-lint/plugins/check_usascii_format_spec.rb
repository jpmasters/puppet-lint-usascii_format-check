require 'spec_helper'

describe 'usascii_format' do
  let(:msg) { 'expected all text in us-ascii' }

  context 'with fix disabled' do
    
    context 'code contains valid characters' do
      let(:code) { "'test'\n" }

      it 'should not detect any problems' do
        expect(problems).to have(0).problems
      end
    end
    
    context 'code contains invalid characters' do
       let(:code) { "'testü'\n"  }

       it 'should detect a single problem' do
         expect(problems).to have(2).problem
       end

       it 'should create a warning' do
         expect(problems).to contain_warning(msg).on_line(1).in_column(1)
       end
     end
    
  end
end