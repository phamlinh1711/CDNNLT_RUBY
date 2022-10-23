class Tinhtoan

    attr_accessor :ts_133,:ms_133

    def initialize(ts_133,ms_133)

        @ts_133 = ts_133

        @ms_133 = ms_133    

    end

    def Cong

        puts "Tổng: #{(ts_133.t*ms_133.m+ms_133.t*ts_133.m)*0.1/(ts_133.m*ms_133.m)}"

    end

    def Tru

        puts "Hiệu #{ts_133.t*ms_133.m-ms_133.t*ts_133.m)*0.1/(ts_133.m*ms_133.m)}"

    end

    def Tich

        puts "Tích: #{(ts_133.t*ms_133.t)*0.1/(ts_133.m*ms_133.m)}"

    end

    def Thuong

        puts "Thương: #{(ts_133.t*ms_133.m)*0.1/(ts_133.m*ms_133.t)}"

    end

end
class Phanso

    attr_accessor :t_133, :m_133

    def initialize(t_133,m_133)

        @t_133= t_133

        @m_133 = m_133

    end

    def ps

        puts "Phân só"

    end

end

ps1 = Phanso.new(1,2)

ps2 = Phanso.new(1,2)

tt = Tinhtoan.new(ts_133,ms_133)

tt.Cong

tt.Tru

tt.Tich

tt.Thuong
