class ProjectBacker

    @@all = []
    attr_accessor :project, :backer

    def initialize(project, backer)
        # @name = name
        # @title = title
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end

end

