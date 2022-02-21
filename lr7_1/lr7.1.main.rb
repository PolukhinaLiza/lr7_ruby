# frozen_string_literal: true

def poisk(farr, garr)
  sizedoc = if farr.size > garr.size
              farr.size
            else
              garr.size
            end
  0.upto(sizedoc) do |ind|
    return ind + 1 if farr.slice(ind) != garr.slice(ind)
  end
  0
end
