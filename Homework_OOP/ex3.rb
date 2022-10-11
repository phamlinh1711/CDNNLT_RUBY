class ThiSinh
    attr_accessor :_id, :ten_133, :addr_133, :uutien_133
  
    def initialize(id_133, ten_133, addr_133, uutien_133)
      @_id = id_133
      @ten_133 = ten_133
      @addr_133 = addr_133
      @uutien_133 = uutien_133
    end
  
    def display
      puts "Số báo danh: #{id_133}"
      puts "Họ tên: #{ten_133}"
      puts "Địa chỉ: #{addr_133}"
      puts "Mức ưu tiên: #{uutien_133}"
    end
  end
  
  class KhoiA < ThiSinh
    def initialize(id_133, ten_133, addr_133, uutien_133)
      super(id_133, ten_133, addr_133, uutien_133)
    end
  
    def display
      super
      puts "Thí sinh khối A"
      puts "Môn thi: Toán, Lý, Hoá"
    end
  end
  
  class KhoiB < ThiSinh
    def initialize(id_133, ten_133, addr_133, uutien_133)
      super(id_133, ten_133, addr_133, uutien_133)
    end
  
    def display
      super
      puts "Thí sinh khối B"
      puts "Môn thi: Toán, Hoá, Sinh"
    end
  end
  
  class KhoiC < ThiSinh
    def initialize(id_133, ten_133, addr_133, uutien_133)
      super(id_133, ten_133, addr_133, uutien_133)
    end
  
    def display
      super
      puts "Thí sinh khối C"
      puts "Môn thi: Văn, Sử, Địa"
    end
  end
  
  class TuyenSinh
    attr :thiSinhList
  
    def initialize
      @thiSinhList = Array.new
    end
  
    def addThiSinh(thiSinh)
      thiSinhList << thiSinh
    end
  
    def findByID(id)
      result = thiSinhList.first { |item| item._id.eql?id }
      puts result.display
    end
  end
  
  manager = TuyenSinh.new
  
  while (true)
    print("Quan ly thi sinh","\n")
    print("Nhap 1: Them thi sinh","\n")
    print("Nhap 2: Hien thi thong tin thi sinh: ","\n")
    print("Nhap 3: Tim kiem thi sinh theo id","\n")
    print("Nhap 4: Thoat:","\n")
    line = gets.chomp
    if (line=="1")
      print("Nhap a: Them thi sinh khoi A","\n")
      print("Nhap b: Them thi sinh khoi B","\n")
      print("Nhap c: Them thi sinh khoi C","\n")
      type = gets.chomp
      if (type=="a")
  
      elsif(type=="b")
  
      elsif(type=="c")
  
        elseprint("Invalid","\n")
      end
    elsif(line=="2")
  
    elsif(line=="3")
      print("Nhap ID: ")
      id = gets.chomp
    elsif(line=="4")
      return
      elseprint("Invalid","\n")
      continue
    end
  end