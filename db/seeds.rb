
#courses
50.times do |i|
  p "creating course #{i}"
  Course.create(
    course_name: "Course #{i + 1}",
    course_code: "C#{i}#{i}",
    course_desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus malesuada bibendum lacus sit amet vulputate. Pellentesque accumsan magna at lectus sagittis, id facilisis velit vestibulum. Aenean hendrerit orci in tincidunt imperdiet. Nunc porttitor, lacus vitae malesuada posuere, nisi neque imperdiet dui, id placerat massa mauris et sapien. Sed luctus ligula varius metus pretium commodo. Cras elementum vestibulum mi sit amet elementum.",
    course_website: "www.course#{i + 1}.com")

end

#reviews
File.open('raw_data.txt', 'r').each_line do |name|
  Course.find(rand(1..50)).reviews.create(
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus malesuada bibendum lacus sit amet vulputate.",
    rating: "#{Random.new.rand(5)}",
    name: "#{name.chomp}",
    email: "#{name}@example.com"
  )
end








