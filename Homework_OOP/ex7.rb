class Teacher
    attr_accessor :luong_133, :thuong_133, :phat_133, :luongThuc_133, :ten_133, :tuoi_133, :qq_133, :id_133
    def initialize
        @id_133 = id_133
        @ten_133 = ten_133
        @tuoi_133 = tuoi_133
        @luong_133 = luong_133
        @thuong_133 = thuong_133
        @phat_133 = phat_133
        @luongThuc_133 = luongThuc_133
        @qq_133 = qq_133
    end

    def input 
        puts "Nhap id:"
        @id_133 = gets.to_i
        puts "Nhap ten:"
        @ten_133 = gets.chomp
        puts "Nhap tuoi:"
        @tuoi_133 = gets.to_i
        puts "Nhap luong cung:"
        @luong_133 = gets.to_f
        puts "Nhap luong thuong:"
        @thuong_133 = gets.to_f
        puts "Nhap tien phat:"
        @phat_133 = gets.to_f
        puts "Nhap que quan:"
        @qq_133 = gets.chomp
    end

    def display
        puts "id: #{@id_133}"
        puts "ten: #{@ten_133}"
        puts "tuoi: #{@tuoi_133}"
        puts "dia chi: #{@qq_133}"
        puts "ten: #{@luong_133}"
        puts "tuoi: #{@thuong_133}"
        puts "dia chi: #{@phat_133}"
    end
end


class ManagementTeacher < Teacher
    def initialize
        @teachers = []
    end

    def add(student)
        @teachers.push(student)
    end

    def displayAll
        @teachers.each{|item| item.display}
    end

    def delete(iD)
        for item in @teachers do
            if(item.id == iD)
                @teachers.delete(item)
            end
        end
    end

    def calculator(id_1)
        count = 0
        @teachers.each do |item|
            if item.id == id_1
                count = item.salary + item.bonus - item.penaty
            end     
        end   
        return count
    end
end

managerTeacher = ManagementTeacher.new
while true
    puts "---Cac chuc nang chinh---"
    puts "Chon 1: Them moi giao vien"
    puts "Chon 2: Hien thi tat ca gia vien "
    puts "Chon 3: Xoa giao vien theo id"
    puts "Chon 4: Tinh luong nhan cua gia vien theo id"
    puts "Chon 5: Thoat chuong trinh"
    print "Chon cong viec can thuc hien: "
    value  = gets.to_i
    case value
        when 1
            teacher = Teacher.new
            teacher.input
            managerTeacher.add(teacher)
        when 2
            managerTeacher.displayAll
        when 3
            puts"Nhap id cua gia vien muon xoa"
            iD1 = gets.to_i
            managerTeacher.delete(iD1)
            puts"Danh sach GV sau khi xoa:"
            managerTeacher.displayAll
        when 4
            puts"Nhap iD cua gia vien can tinh luong"
            iD2 = gets.to_i
            puts managerTeacher.calculator(iD2)
        when 5
            break
        else
            puts "Khong hop le"
    end
end