#!/usr/bin/env ruby

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
                    when :special_chars
                        @selection += specials
                    else
                        #handle custom array passed in
                        @selection += option
                    end
                end
            end
        end

        def print_permutations_to_console(verbose=true)
            generate_permutations(verbose).each do |permutation|
                puts permutation
            end
        end

        def print_permutations_to_csv(verbose=true)
            puts "Generating csv..." if verbose
            File.open("brutalitops_#{Time.now.strftime("%Y_%m_%d_%H%M%S").to_s}.csv", "w") do |file|
                generate_permutations(verbose).each do |permutation|
                    file.puts permutation
                end
            end
            puts "Finished generating csv." if verbose
        end

        def to_array
            generate_permutations
        end

    private

        def generate_permutations(verbose=false)
            permutations = []
            puts "Generating permutations..." if verbose

            @min.upto(@max) do |i|
                puts "Building permutation with #{i} choices. This might take some time." if verbose
                temp_arr = @selection.repeated_permutation(i).to_a
                temp_arr.each {|t| permutations << t.join.to_s}
                puts "Finished building permutation with #{i} choices." if verbose
            end

            puts "Finished permutations." if verbose
            puts "Number of permutations generated: #{permutations.size}" if verbose

            permutations
        end

    end


#test things out
# def time_it(label)
#     start_time = Time.now
#     yield
#     elapsed_time = Time.now - start_time
#     puts "#{label} took #{elapsed_time} seconds"
# end

# b = Brutalitops.new(2, 3, [:alpha_lowercase, :special_chars, ['Y', 'N', 'P']])

# time_it("print_permutations_to_csv") do
#     b.print_permutations_to_csv
# end