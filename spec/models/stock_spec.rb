require 'spec_helper'

describe Stock do
  it { should allow_mass_assignment_of :name }
  it { should allow_mass_assignment_of :scrip }
end
