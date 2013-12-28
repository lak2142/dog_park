require 'spec_helper'

describe Dog do
  it { should have_valid(:name).when('Spartacus') }
  it { should_not have_valid(:name).when(nil, '') }

  it { should have_many(:owner_of_dogs).dependent(:destroy) }
end
