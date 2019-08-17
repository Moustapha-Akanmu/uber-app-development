# InSpec test for recipe development::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe package('python') do
  it { should be_installed }
end

describe package('python-pip') do
  it { should be_installed }
end
