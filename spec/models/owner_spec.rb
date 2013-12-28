require 'spec_helper'

describe Owner do
  let(:blanks) { ['', nil]}

  it { should have_valid(:first_name).when('Lily') }
  it { should_not have_valid(:first_name). when(*blanks) }

  it { should have_valid(:last_name).when('Keane') }
  it { should_not have_valid(:last_name). when(*blanks) } 

  it { should have_valid(:email).when('lil@example.com') }
  it { should_not have_valid(:email).when(*blanks) }

  it { should have_many(:owner_of_dogs).dependent(:destroy) }

end
