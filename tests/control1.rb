control 'test1' do
  title 'test1'
  desc 'Test 1 description'

  describe command('inspec -v') do
    its('stdout') { should include '4.49.0' }
  end

  describe command('inspec -v') do
    its('stdout') { should include '4.49.0' }
  end
end