class Rom
    attr_accessor :loai_133, :gia_133

    def initialize(loai_133, price)
        @loai_133 = loai_133
        @gia_133 = gia_133
    end
end

#rom A
class RomA < Rom
    def initialize
        super("A",500)
    end

    def display
        puts"Loai phong #{@loai_133}"
        puts"Gia phong #{@gia_133}"
    end
end

#rom B
class RomB < Rom
    def initialize
        super("B",300)
    end

    def display
        puts"Loai phong #{@loai_133}"
        puts"Gia phong #{@gia_133}"
    end
end

#rom C
class RomC < Rom
    def initialize
        super("C",100)
    end

    def display
        puts"Loai phong #{@loai_133}"
        puts"Gia phong #{@gia_133}"
    end
end

#person
class Person < Rom
    attr_accessor :name, :age, :passport, :numberRent

    def initialize(name_133, age_133, passport_133, numberRent_133, loai_133, gia_133 )
        @name_133 = name_133
        @age_133 = age_133
        @passport_133 =passport_133
        @numberRent_133 = numberRent_133
        @loai_133 = loai_133
        @gia_133 = gia_133
    end

    def input
        puts"Nhap ten"
        @name = gets.to_s
        puts"Nhap tuoi"
        @age = gets.to_i
        puts"Nhap CCCD"
        @passport = gets.to_s

    end

    def display
        puts"Ten khach hang #{@name_133}"
        puts"Tuoi khach hang #{@age_133}"
        puts"CCCD khach hang #{@passport_133}"
        puts"Loai phong #{@loai_133}"
        puts"Gia xu #{@gia_133}"
        puts"So ngay muon thue #{@numberRent_133}"
    end
end

#hotel
class Hotel < Person
    def initialize
        @persons = []
    end

    # def input
    #     super
        
    # end

    def addRom(value)
        @persons.push(value)
    end

    def delete(cccd)
        for item in @persons do
            if(item.passport == cccd)
                @persons.delete(item)
            end
        end
    end
       
    def caculator(cccd)
        for item in @persons do
            if(item.passport == cccd)
               return item.price * item.numberRent
            end
        end
    end

    def display
      @persons.each{ |item| print item.display}
    end

end

#


hotel = Hotel.new
while true
    puts "---Cac chuc nang chinh---"
    puts "Chon 1: Them moi khach hang"
    puts "Chon 2: Hien thi thong tin khach hang: "
    puts "Chon 3: Xoa khach hang theo CCCD"
    puts "Chon 4: Tinh tien cho khach theo CCCD:"
    puts "Chon 5: Thoat khoi chuong trinh"
    print "Chon cong viec can thuc hien: "
    value  = gets.to_i
    case value
        when 1
            puts"Nhap ten"
            name = gets.to_s
            puts"Nhap tuoi"
            age = gets.to_i
            puts"Nhap CCCD"
            passport = gets.to_s
            puts"Cac loai phong:"
            puts"Chon 1 : Loai A"
            puts"Chon 2 : Loai B"
            puts"Chon 3 : Loai C"

            puts"Chon loai phong:"
            loai = gets.to_i

            case loai
                when 1
                    rom = RomA.new
                when 2
                    rom = RomB.new
                when 3
                    rom = RomC.new
                else
                    puts"Khong co loai phong tuong ung"
            end
            puts "Nhap so ngay muon thue"
            number_day = gets.to_i

           if rom
                person = Person.new(name,age,passport,number_day, rom.type, rom.price) 
                hotel.addRom(person)
           end
           
        when 2
            hotel.display
        when 3
            puts"Nhap CCCD cua khach muon xoa"
            cccd = gets.to_s
            hotel.delete(cccd)
        when 4
            puts"Nhap CCCD cua khach muon xoa"
            cccd = gets.to_s
            result = hotel.caculator(cccd)
            puts result
        when 5
            break
        else
            puts "Khong hop le"
    end
end