class CD
  @@CD = []

  define_method(:initialize) do |title, song|
    @title = title
    @song = song
  end

  define_method(:title) do
    @title
  end

  define_method(:song) do
    @song

  end

  define_singleton_method(:all) do
    @@CD

  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
      @@CD.push(self)

    end

    define_singleton_method(:clear) do
    @@CD = []

  end

  define_singleton_method(:find) do |id|
      found_cd = nil
      @@CD.each() do |disk|
        if disk.id().eql?(id)
          found_cd = disk
        end
      end
      found_cd
    end
end
