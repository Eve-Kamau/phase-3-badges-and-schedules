# Write your code here.
def badge_maker(name)
    return "Hello, my name is #{name}."
end
puts badge_maker("Arel")
# -----------------------------------------------------------------------------------
#Write a #batch_badge_creator method that takes an array of names as an argument returns an array of badge messages.
def batch_badge_creator(badge_names)
    attendees = Array.new
    badge_names.each do|name|
    attendees << badge_maker(name)
    end
    return attendees
end
puts batch_badge_creator(["Edsger","Ada","Charles","Alan","Grace","Linus","Matz"])
# -------------------------------------------------------------------------------------------
#Write a method called #assign_rooms that takes the list of speakers and assigns each speaker to a room. Make sure that each room only has one speaker.You have rooms 1-7.
# def assign_rooms(speakers)
#     roomarr = []
#     speakers.each_with_index {|speakers,index|
#     roomarr << "Hello, #{speakers}! You'll be assigned to room #{index+1}!"} 
#     return roomarr
# end

def assign_rooms(speakers)
    room = 0
    speakers.map do |name|
    room += 1
    "Hello, #{name}! You'll be assigned to room #{room}!"
    end
end
# ------------------------------------------------------------------------------------------

#Create a method called #printer that will output first the results of the #batch_badge_creator method, and then the output of the #assign_rooms method, to the screen
def printer(attendees)
    batch_badge_creator(attendees).each do |name|
    puts name  
    end
    assign_rooms(attendees).each do |room|
    puts room 
    end 
end 
