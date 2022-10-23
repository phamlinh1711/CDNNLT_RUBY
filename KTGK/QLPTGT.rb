class Xe_133
    attr_accessor :id_133 , :hangsx_133, :namsx_133, :dongxe_133,  :giaban_133, :bienso_133, :mauxe_133
    def initialize(id_133,hangsx_133,namsx_133,dongxe_133,bienso_133,mauxe_133)
        @id_133 = id_133
        @hangsx_133 = hangsx_133
        @namsx_133 = namsx_133
        @dongxe_133 = dongxe_133
        @bienso_133 = bienso_133
        @mauxe_133 = mauxe_133
    end
       
    def initialize ()
        
    end
    
    def input 
        puts "Nhap id xe: "
        @id_133 = gets.chomp
        puts "Nhap hang san xuat : "
        @hangsx_133 = gets.chomp
        puts "Nhap nam san xuat: "
        @namsx_133 = gets.chomp
        puts "Nhap dong xe: "                     
        @dongxe_133 = gets.chomp
        puts "Nhap gia ban: "
        @giaban_133 = gets.chomp
        puts "Nhap bien so xe: "
        @bienso_133 = gets.chomp
        puts "Nhap mau xe: "
        @mauxe_133 = gets.chomp
    end

    def display
        puts "ID : #{@id_133} - HangSX : #{@hangsx_133} - NamSX #{@namsx_133} - DongXe #{@dongxe_133} - GiaBan #{@giaban_133} - BienSo #{@bienso_133} - MauXe #{@mauxe_133} "
    end
end
class  Car_133 < Xe_133
    attr_accessor :socho_133, :kieudongco_133, :nhienlieu_133, :sotuikhi_133, :ngaydangkiem_133
    def initialize(id_133,hangsx_133,namsx_133,dongxe_133,bienso_133,mauxe_133,socho_133, kieudongco_133, nhienlieu_133, sotuikhi_133, ngaydangkiem_133)
        super(id_133, hangsx_133, namsx_133,dongxe_133, giaban_133, bienso_133, mauxe_133)
        @socho_133 = socho_133
        @kieudongco_133 = kieudongco_133
        @nhienlieu_133 = nhienlieu_133
        @sotuikhi_133 = sotuikhi_133
        @ngaydangkiem_133 = ngaydangkiem_133
        
    end
    def initialize()

    end
    def input 
        super
        puts "Nhap so cho: "
        socho_133 = gets.chomp
        puts "Nhap kieu dong co: "
        kieudongco_133 = gets.chomp
        puts "Nhap nhien lieu: "
        nhienlieu_133 = gets.chomp
        puts "Nhap so tui khi: "
        sotuikhi_133 = gets.chomp
        puts "Nhap ngay dang kiem: "
        ngaydangkiem_133 = gets.chomp

    end
    def display
        super
        puts "- Socho : #{@socho_133} - KieuDongCo : #{@kieudongco_133}- Nhienlieu : #{@nhienlieu_133} - SoTuiKhi : #{@sotuikhi_133} - NgayDangKiem : #{@ngaydangkiem_133}"
    end

end
class Bike_133 < Xe_133
    attr_accessor :congsuat_133 ; :dungtich_133
    def initialize(id_133,hangsx_133,namsx_133,dongxe_133,bienso_133,mauxe_133,congsuat_133,dungtich_133)
        super(id_133, hangsx_133, namsx_133,dongxe_133, giaban_133, bienso_133, mauxe_133)
         @congsuat_133 = congsuat_133
         @dungtich_133 = dungtich_133
         
    end
    def initialize()
    
    end
    def input 
        super
        puts "Nhap cong suat: "
        congsuat_133 = gets.chomp
        puts "Nhap dung tich xe: "
        dungtich_133 = gets.chomp
        

    end
    def display
        super
        puts "- CongSuat : #{@congsuat_133} - DungTich : #{@dungtich_133}"
    end
end
class Tai_133 < Xe_133
    attr_accessor :trongtai_133
    def initialize(id_133,hangsx_133,namsx_133,dongxe_133,bienso_133,mauxe_133,trongtai_133)
        super(id_133, hangsx_133, namsx_133,dongxe_133, giaban_133, bienso_133, mauxe_133)
        @trongtai_133 = trongtai_133
       
    end
    def initialize ()
    
    end
    def input 
        super
        puts "Nhap trong tai: "
        trongtai_133 = gets.chomp
        

    end
    def display
        super
        puts "- TrongTai : #{@trongtai_133}"
    end
end
class QLPTGT
    $phuongtien = []
    def add
            puts "===Chon phuong tien muon them==="
            puts "1.Oto"
            puts "2.Xe may"
            puts "3.Xe Tai"
            puts "4.Thoat"
            number = gets.to_i
            if number ==1 
                xe =Car_133.new
             
            elsif choose == 2
                xe =Bike_133.new
            else 
                xe = Tai_133.new
            end
            xe.input
            $phuongtien << xe 
    end

    def infomatinon 
        puts "===Danh sach phuong tien==="    
        $phuongtien.each do |xe|
            puts xe.display
        end
    end

    def menu
        $tt = true
        while $tt
            puts "1. Nhap thong tin moi cho xe"
            puts "2. Tim kiem theo xe"
            puts "3. Hien thi thong tin cua xe"
            puts "4.Thoat"
            numbermn = gets.to_i
            case numbermn
            when 1
                qlptgt = QLPTGT.new
                qlptgt.add
            when 2
            when 3
                qlptgt = QLPTGT.new
                qlptgt.infomatinon
            when 4
                exit
            end

        end
    end
end
qlptgt = QLPTGT.new
qlptgt.menu
