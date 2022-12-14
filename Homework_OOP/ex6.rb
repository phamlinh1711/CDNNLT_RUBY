class Student
    attr_accessor :ten_133, :tuoi_133, :addr_133
    def initialize(name,age,address)
        @ten_133 = ten_133
        @tuoi_133 = tuoi_133
        @addr_133 = addr_133
    end

    def input 
        puts "Nhap ten:"
        @name = gets.to_s
        puts "Nhap tuoi:"
        @age = gets.to_i
        puts "Nhap dia chi:"
        @address = gets.to_s
    end

    def display
        puts "Nhap ten: #{@ten_133}"
        puts "Nhap tuoi: #{@tuoi_133}"
        puts "Nhap dia chi: #{@addr_133}"
    end
end


class School < Student
    def initialize
        @students = []
    end

    def add(student)
        @students.push(student)
    end

    def display
        @students.each{|item| puts item.display}
    end


    def display20
        result = @students.select{|item| item.age == 20}
        result.each{|std| puts std.display}
    end

    def display23vsDN
        count = 0
        @students.each do |item|
            puts item.address
            if item.age == 23 && item.address == "DN"
                count+=1;
            end     
        end   
        return count
    end
end

school = School.new
while true
    puts "---Cac chuc nang chinh---"
    puts "Chon 1: Them moi hoc sinh"
    puts "Chon 2: Hien thi hoc sinh 20 tuoi: "
    puts "Chon 3: Hien thi hoc sinh 23 tuoi o DN"
    puts "Chon 4: Thoat chuong trinh"
    print "Chon cong viec can thuc hien: "
    value  = gets.to_i
    case value
        when 1
            puts"Nhap ten"
            name = gets.chomp
            puts"Nhap tuoi"
            age = gets.to_i
            puts"Nhap dia chi"
            address = gets.chomp
            student = Student.new(name, age, address)
            school.add(student)
        when 2
            school.display20
        when 3
            puts school.display23vsDN
        when 4
            beark
        else
            puts "Khong hop le"
    end
end