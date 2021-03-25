class Project
    attr_accessor :title
    @@all = []

    def initialize(title)
        
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer_projects = ProjectBacker.all.select { |project_backer| project_backer.project == self }
        backer_projects.map { |backer_project| backer_project.backer }
    end

end