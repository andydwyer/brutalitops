class Brutalitops

    def initialize(min, max, options=[])
        alphabet_lowercase = ('a'..'z').to_a
        alphabet_uppercase = ('A'..'Z').to_a
        nums = (0..9).to_a
        specials = [' ', '!', '@', '#', '$', '%','^', '&', '*', '(', ')', '-', '_', '+', '=', '[', ']', '{', '}', '|', '\\', '?', "/", '<', '>', '.', ',', '~', '`']

        @min = min
        @max = max
        @selection = []

        if !options.empty?
            options.each do |option|
                case option
                when :alpha_lowercase
                    @selection += alphabet_lowercase
                when :alpha_uppercase
                    @selection += alphabet_uppercase
                when :nums
                    @selection += nums
                when :specials
                    @selection += specials
                else
                    #handle custom array passed in
                    @selection += option
                end
            end
        end
    end

    #TODO: refactor out permutation blocks
    def print_permutations_to_console(verbose=true)
        candidates = []
        puts "Generating permutations..." if verbose

        @min.upto(@max) do |i|
            puts "Building permutation with #{i} choices. This might take some time." if verbose
            temp_arr = @selection.repeated_permutation(i).to_a
            temp_arr.each {|t| candidates << t.join.to_s}
            puts "Finished building permutation with #{i} choices." if verbose
        end

        puts "Finished permutations." if verbose
        puts "Number of permutations generated: #{candidates.size}" if verbose

        candidates.each do |candidate|
            puts candidate
        end
    end

    def print_permutations_to_csv(verbose=true)
        candidates = []
        puts "Generating permutations..." if verbose

        @min.upto(@max) do |i|
            puts "Building permutation with #{i} choices. This might take some time." if verbose
            temp_arr = @selection.repeated_permutation(i).to_a
            temp_arr.each {|t| candidates << t.join.to_s}
            puts "Finished building permutation with #{i} choices." if verbose
        end

        puts "Finished permutations." if verbose
        puts "Number of permutations generated: #{candidates.size}" if verbose

        puts "Generating csv..." if verbose
        File.open("brutalitops_#{Time.now.strftime("%Y_%m_%d_%H%M%S").to_s}.csv", "w") do |file|
            candidates.each do |candidate|
                file.puts candidate
            end
        end
        puts "Finished generating csv." if verbose
    end

    #TODO: remove puts after testing
    def to_array
        candidates = []
        puts "Generating permutations..."

        @min.upto(@max) do |i|
            puts "Building permutation with #{i} choices. This might take some time."
            temp_arr = @selection.repeated_permutation(i).to_a
            temp_arr.each {|t| candidates << t.join.to_s}
            puts "Finished building permutation with #{i} choices."
        end
        
        candidates
    end
end

#test things out
def time_it(label)
    start_time = Time.now
    yield
    elapsed_time = Time.now - start_time
    puts "#{label} took #{elapsed_time} seconds"
end

b = Brutalitops.new(2, 3, [:alpha_lowercase])
a = []

time_it("print_to_csv") do
    a = b.to_array
end

puts a.class
puts a.size