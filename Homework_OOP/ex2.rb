
class Document
  attr_accessor :id1_133, :tenph_133, :soph_133

  def initialize (id_133, tenph_133, soph_133)
    @id1_133 = id_133
    @tenph_133 = tenph_133
    @soph_133 = soph_133
  end

  def display
    return "ID: #{id_133}\nTen phat hanh: #{tenph_133}\nSo ban phat hanh: #{soph_133}"
  end
end

class Book < Document
  attr_accessor :tacgia_133, :sotrang_133

  def initialize(id_133, tenph_133, soph_133, tacgia_133, sotrang_133)
    super id_133, tenph_133, soph_133
    @tacgia_133 = tacgia_133
    @sotrang_133 = sotrang_133
  end

  def display
    return super + "\nTac gia: #{tacgia_133}\nSo trang: #{sotrang_133}"
  end
end

class Magazine < Document
  attr_accessor :numberph_133, :thangph_133

  def initialize(id_133, tenph_133, soph_133, numberph_133, thangph_133)
    super id_133, tenph_133, soph_133
    @numberph_133 = numberph_133
    @thangph_133 = thangph_133
  end

  def display
    return super + "\nSo phat hanh: #{numberph_133}\nThang phat hanh: #{thangph_133}"
  end
end

class News < Document
  attr_accessor :dateph_133

  def initialize(id_133, tenph_133, soph_133,dateph_133)
    super id_133, tenph_133, soph_133
    @dateph_133 = dateph_133
  end

  def display
    return super + "\nNgay phat hanh: #{dateph_133}"
  end
end

class DocumentManager

  attr :docList_133

  def initialize
    @docList_133 = Array.new
  end

  def addNewDocument()
    puts "1. Sách"
    puts "2. Tạp chí"
    puts "3. Báo"
    print "Chọn loại tài liệu: "
    type = gets.chomp
    puts "THÊM MỚI " + (type == '1' ? "Sách" : type == '2' ? "Tạp chí" : "Báo")
    puts "Nhập mã tài liệu: "
    id = gets.chomp
    puts "Nhập tên nhà xuất bản: "
    publisher = gets.chomp
    puts "Nhập số bản phát hành: "
    publishedNum = gets.chomp
    case type
    when '1'
      puts "Nhập tên tác giả: "
      aName = gets.chomp
      puts "Nhập số trang: "
      pageNums = gets.chomp
      obj = Book.new(id, tenph_133, soph_133, tacgia_133, sotrang_133)
    when '2'
      puts "Nhập số phát hành: "
      publishNumber = gets.chomp
      puts "Nhập tháng phát hành: "
      month = gets.chomp
      obj = Magazine.new(id, tenph_133, soph_133, numberph_133, thangph_133)
    when '3'
      puts "Nhập ngày phát hành: "
      publishedDate = gets.chomp
      obj = News.new(id, tenph_133, soph_133,dateph_133)
    end
    docList_133 << obj
  end

  def deleteBook(id_133)
    result = docList_133.delete_if { |doc| doc.id1_133.eql? id_133 }
    puts result
  end

  def getBookByType(type)
    #  1-book 2-magazine 3-news
    return docList_133.select { |doc| doc.is_a? type == 1 ? Book : type == 2 ? Magazine : News }
  end

  def displayDocument(id_133)
    doc = docList_133.first { |doc| doc.id1_133 == id_133 }
    if doc != nil
      puts "Thông tin tài liệu #{id_133}:"
      puts doc.display
    else
      puts "Không tìm thấy tài liệu có mã #{id_133}"
    end

  end
end

documentManager = DocumentManager.new

while true
  system("cls")
  puts("1. Thêm mới 1 tài liệu")
  puts("2. Xóa tài liệu bằng mã")
  puts("3. Xem tài liệu bằng mã")
  puts("4. Tìm kiếm theo mã tài liệu")
  puts("5. Thoát chương trình")
  print "Nhập vào lựa chọn: "
  choosen = gets.chomp
  case choosen
  when '1'
    documentManager.addNewDocument()
  when '2'
    print "Nhập vào id tài liệu muốn xóa: "
    id = gets.chomp
    documentManager.deleteBook(id_133)
  when '3'
    print "Nhập vào id tài liệu muốn hiển thị: "
    id = gets.chomp
    documentManager.displayDocument(id_133)
  when '4'
    print "Nhập vào loại tài liệu muốn lọc\n(1-Book 2-Magazine 3-News): "
    type = gets.chomp
    arr = documentManager.getBookByType(type)
    puts "Danh sách #{(type == '1' ? "Sách" : type == '2' ? "Tạp chí" : "Báo")}"
    arr.each { |doc| puts doc.display }
  when '5'
    break
  end
  puts "Nhấn phím bất kỳ để tiếp tục"
  gets
end
puts 'Thanks for using'