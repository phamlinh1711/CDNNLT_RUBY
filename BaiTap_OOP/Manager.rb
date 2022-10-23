class CanBo
    attr_accessor : :name, :age, :gender, :address
    def initialize(name, age, gender, address)
        @name = name
        @age = age
        @gender = gender
        @address =address
    end
    def display
        puts " Name : #{name} - Age :#{age} - Gender #{gender} - Address #{address}"
    end
end
class Worker < CanBo
    attr_accessor: :level
    def initialize (name, age, gender, address, level)
        @level =level
        super(name, age, address, address)
    end
    def display
        super
        puts " Level - #{level}"
    end
end
class Engineer < CanBo
    attr_accessor: :branch
    def initialize (name, age, gender, address, branch)
        @branch = branch
        super (name, age, gender, address)
    end
    def display
        super
        puts "Branch - #{branch}"
    end
end 
class Staff < CanBo 
    attr_accessor: :task
    def initialize (name, age, gender, address, task)
        @task = task
        super (name, age, gender, address, task)
    end
    def display
        super
        puts " Task - #{task}"
    end
end
