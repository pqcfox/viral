module Viral
  class Virus
    def new
      yield Viral::Rules
    end
  end
end



