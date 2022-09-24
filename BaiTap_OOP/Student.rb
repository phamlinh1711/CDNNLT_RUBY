class Human
    attr_accessor :name, :hair, :height,:weight, :age,:phone,:email,:nation

    def initialize ( name, hair, height,weight,age,phone,email,nation)
        @name = name
        @hair = hair
        @height = height
        @weight = weight
        @age = age
        @email = email
        @phone = phone
        @nation = nation
    end

    def display
        puts "Name : #{name} - Hair : #{hair} - Height #{height} - Weight #{weight} - Email : #{email} - Phone #{phone} - Nation #{nation}"
    end
end


class Student < Human
    attr_accessor :grade1, :grade2, :grade3
    
    def initialize ( name, hair, height,weight,age,phone,email,nation,grade1, grade2,grade3)
        @grade1 = grade1;
        @grade2 = grade2;
        @grade3 = grade3;
        super(name, hair, height,weight,age,phone,email,nation)
    end 

    def average
         (grade1 + grade2 + grade3 )*1.0/3.0
    end

    def display
        super
        puts "Score average : #{average}"
    end

end
students = []
student1=Student.new("Pham Van Linh","Bac",50,170,20,"linh@gmail.com","0867015030","VietNam",5,5,5);
student2=Student.new("Pham Thi Hao","Den",50,170,20,"hao@gmail.com","0867015030","VietNam",6,6,6);
student3=Student.new("Pham Thi Huyen","Do",50,170,20,"huyen@gmail.com","0867015030","VietNam",7,7,7);
student4=Student.new("Pham Thi Tam","Nau",50,170,20,"tam@gmail.com","0867015030","VietNam",8,8,8);

students.push(student1)
students.push(student2)
students.push(student3)
students.push(student4)
puts '********Danh sach sinh vien khong sap xep:**********'
for i in 0..(students.length-1)
    puts "-------Sinh Vien #{i+1} -------:"
    puts students[i].display
 end

 puts '*********Danh sach sinh vien sap xep:************'
 studentsort = students.sort_by{|student| [student.average]}.reverse
 for i in 0..(studentsort.length-1)
    puts "-------Sinh vien #{i+1} ---------:"
    puts studentsort[i].display
 end