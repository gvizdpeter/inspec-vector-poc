control 'test2' do
  title 'test2'
  desc 'Test 2 description'

  describe command('inspec -v') do
    its('stdout') { should include '4.49.0' }
  end

  describe command('inspec -v') do
    its('stdout') { should include '4.45.0' }
  end
end