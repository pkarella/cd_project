require('rspec')
require('cd')

describe(CD) do
  before() do
      CD.clear()
    end

  describe("#title") do
    it("returns the title of the CD")do
      test_cd = CD.new("The WhizKids","Happy Dance")
      expect(test_cd.title()).to(eq("The WhizKids"))
    end
  end
  describe("#song") do
    it("returns the song")do
      test_cd = CD.new("The WhizKids","Happy Dance")
      expect(test_cd.song()).to(eq("Happy Dance"))
    end
  end
end
