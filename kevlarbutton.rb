class Kevlar
  def initialize(url, bgColor, bgIMG, radius, width, height, font, fontColor, fontSize, fontWeight, text)
    @url = url
    @bgColor = bgColor
    @bgIMG = bgIMG
    @radius = radius
    @width = width
    @height = height
    @font = font
    @fontColor = fontColor
    @fontSize = fontSize
    @fontWeight = fontWeight
    @text = text
    @arc = (@rad.to_f / @height.to_f * 100).ceil
  end

  def build
    puts "\n\n<!--[if !mso]><!-- -->\n
          \t<a href=\"#{@url}\" valign=\"middle\" style=\"background-color: #{@bgColor};background-image: url('#{@bgIMG}');background-size:100% auto;background-repeat: no-repeat;-webkit-border-radius: #{@rad}px;-moz-border-radius: #{@radius}px;-ms-border-radius: #{@radius}px;border-radius: #{@radius}px;width: #{@width}px;height: #{@height}px;text-align: center;color: #{@fontColor};font-family: #{@font}; font-size: #{@fontSize}px;font-weight: #{@fontWeight};text-transform: uppercase;display:block;line-height:32px;text-decoration: none;\">#{@text}</a>\n
          <!--<![endif]-->\n
          <!--[if lte mso 15]>\n
          \t<v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" href=\"#{@url}\" style=\"height:#{@height}px;v-text-anchor:middle;width:#{@width}px;\" arcsize=\"#{@arc}%\" stroke=\"f\" fill=\"t\">\n
            \t\t<v:fill type=\"tile\" src=\"#{@bgIMG}\" color=\"#{@bgColor}\" />\n
              \t\t\t<w:anchorlock/>\n
              \t\t\t<center style=\"color:#{@fontColor};font-family: #{@font}; font-size: #{@fontSize}px;font-weight: #{@fontWeight};text-transform: uppercase;\">#{@text}</center>\n
          \t\t</v:roundrect>\n
          <![endif]-->\n
          <!--[if gte mso 16]>\n
          \t<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n
              \t\t<tr>\n
                  \t\t\t<td align=\"center\" valign=\"middle\" width=\"#{@width}\" height=\"#{@height}\" valign=\"middle\" style=\"background-color: #{@bgColor};background-image: url('#{@bgIMG}');background-size:100% auto;background-repeat: no-repeat;-webkit-border-radius: #{@radius}px;-moz-border-radius: #{@rad}px;-ms-border-radius: #{@rad}px;border-radius: #{@rad}px;width: #{@width}px;height: #{@height}px;text-align: center;color: #{@fontColor};font-family: #{@font}; font-size: #{@fontSize}px;font-weight: #{@fontWeight};text-transform: uppercase;display:block;\">\n
                      \t\t\t\t<a href=\"#{@url}\" style=\"color:#{@color};text-decoration: none;\">#{@text}</a>\n
                  \t\t\t</td>\n
              \t\t</tr>\n
          \t</table>\n
          <![endif]-->\n"
  end

  def getURL
    puts "What is the URL?"
    @url = gets.chomp
  end

end


def kevlar
  # setting URL
  puts "What is the URL?"
  link = gets.chomp
  # Making sure link isn't blank
  if link == ""
    puts "Sorry, that isn't a valid URL. Please Try again"
    link = gets.chomp
    if link != ""
      puts "\nURL is " + link
    end
  else
    puts "\nURL is " + link
  end

  # background color
  puts "\nWhat is the background color?"
  bgColor = gets.chomp
  if bgColor == ""
    puts "\nSorry, can you put in a color?"
    bgColor = gets.chomp
  else
    puts "\nThe background color is " + bgColor
  end

  # background image
  puts "\nIs there a background image?  y or n"
  is_bgimg = gets.chomp

  while is_bgimg == ""
    puts "\nPlease answer y or n"
    is_bgimg = gets.chomp
  end

  if is_bgimg == "y"

    puts "\nWhat is the URL for the image?"
    bgIMG = gets.chomp

    while bgIMG == ""
      puts "\nplease provide a url"
      bgIMG  = gets.chomp
    end

    puts "\nThe URL for the image is " + bgIMG

  elsif is_bgimg == "n"

    puts "\nThere will be no background image"

  else

    puts "\nthere was an error. Would you like a background image? y and n"
    is_bgimg = gets.chomp

    while is_bgimg == ""
      puts "\nPlease answer y or n"
      is_bgimg = gets.chomp
    end

    if is_bgimg == "y"

      puts "\nWhat is the URL for the image?"
      bgIMG = gets.chomp

      while bgIMG == ""

        puts "\nplease provide a url"
        bgIMG = gets.chomp

      end

      puts "\nThe URL for the image is " + bgIMG

    end
  end

  #Border Radius
  puts "\nWhat is the border Radius in pixels?"
  rad = gets.chomp
  puts "\nThe border radisu is " + rad + "px"

  # Button Width
  puts "\nWhat is the button width?"
  width = gets.chomp
  puts "\nThe button width is " + width + "px"

  # Button Height
  puts "\nWhat is the button height?"
  height = gets.chomp
  puts "\nThe button height is " + height + "px"

  # Font Stack
  puts "\nWhat is the font stack?"
  font = gets.chomp
  puts "\nThe font stack is " + font

  # Font Color
  puts "\nWhat is the font color?"
  color = gets.chomp
  puts "\nThe font color is " + color

  # Font Size
  puts "\nWhat is the font size?"
  size = gets.chomp
  puts "\nThe font size is " + size

  # Font Weight
  puts "\nWhat is the font weight?"
  weight = gets.chomp
  puts "\nThe font weight is " + weight

  # Button Text
  puts "\nWhat is the button text?"
  btnTEXT = gets.chomp
  puts "\nThe button text is " + btnTEXT

  button = Kevlar.new(link, bgColor, bgIMG, rad, width, height, font, color, size, weight, btnTEXT)

  button.build()


end

kevlar
