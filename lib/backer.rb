class Backer
    attr_accessor :name, :project 

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        Project.all.select { |project| project.backer.name == self }
    end


end
