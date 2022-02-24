class MegaGreeter
    attr_accessor :names
    #creates object
    def initialize(names = "World")
        @names = names
    end
    #says hi
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            #iterates @names
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end
    end
    #says bye
    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            #joins the list with commas
            puts "Goodbye #{@names.join(", ")}. Come back soon!"
        else
            puts "Goodbye #{@names}. Come back soon!"
        end
    end
end

if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye
    #changes name to robert
    mg.names = "Robert"
    mg.say_hi
    mg.say_bye
    #changes to array of names
    mg.names = ["Emily", "Zeke", "Charlie"]
    mg.say_hi
    mg.say_bye
    #changes to nil
    mg.names = nil
    mg.say_hi
    mg.say_bye
end
