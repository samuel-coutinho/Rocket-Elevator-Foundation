require 'elevatormedia'

describe ElevatorMedia::Streamer do
    describe 'getContent' do
        context 'test the return of the function' do
            it 'returns a string' do
                expect(ElevatorMedia::Streamer.getContent).to be_a(String)
            end
        end
    end    
end