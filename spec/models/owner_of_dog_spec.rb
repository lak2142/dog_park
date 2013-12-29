require 'spec_helper'

describe OwnerOfDog do
  it { should have_valid(:owner_id).when(1) }
  it { should_not have_valid(:owner_id).when(nil, '') }

  it { should have_valid(:dog_id).when(1) }
  it { should_not have_valid(:dog_id).when(nil, '') }

  it { should belong_to(:dog) }
  it { should belong_to(:owner) }
end
