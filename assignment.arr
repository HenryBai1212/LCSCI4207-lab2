import file("lab2-support.arr") as support
support.encryptor1("Helloworld")
support.encryptor1("1")

fun HB-encryptor1(s :: String) -> String: 
  doc: "repeat the string 5 times"
  string-repeat(s, 5)
  end
HB-encryptor1("Hi")
support.test-encryptor1(HB-encryptor1)
support.encryptor2("China")
support.encryptor2("Chinaaaaaaaaaa")
support.encryptor2("CCCCCCChina")
fun HB-encryptor2(s :: String) -> String:
  doc:  "Showing the first 4 charators"
  string-substring(s, 0, 4)
  
end

HB-encryptor2("GoodBye")
support.test-encryptor2(HB-encryptor2)
support.encryptor3("10")
support.encryptor3("Gooddddddddddddddddd")
support.encryptor3("good nice wow !!!!!")
support.encryptor3("1 0qqqqq qqqq - qq")
support.encryptor3("holmes,. sherlock! io?#.baker$")
fun HB-encryptor3(s :: String) -> String:
  doc: "change the . to !  "
  string-replace(s,".", "!")
end
support.test-encryptor3(HB-encryptor3)
support.encryptor4("10000000")
support.encryptor4("ABCD")
support.encryptor4("abcde")
fun HB-encryptor4(s :: String) -> String:
  doc: "Repeat the first 4 charactors for 5 times"
  s-step = string-substring(s, 0, 4)
  string-repeat(s-step, 5)
end
HB-encryptor4("QWERT")
support.test-encryptor4(HB-encryptor4)

support.encryptor5("ABCDEFG")
support.encryptor5("CDEFG")
support.encryptor5("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
support.encryptor5("0123456789")
support.encryptor5("0123456789abcdefg")
support.encryptor5("apple")
support.encryptor5("ooooh")
support.encryptor5("02912 pvd")
fun HB-encryptor5(s :: String) -> String:
  doc: "Changing the letter A to B, E to F, I to J, O to P and U to V no matter with the Upper or lower case"
  s1 = string-replace(s, "A", "B")
  s2 = string-replace(s1, "E", "F")
  s3 = string-replace(s2, "I", "J")
  s4 = string-replace(s3, "O", "P")
  s5 = string-replace(s4, "U", "V")
  s6 = string-replace(s5, "a", "b")
  s7 = string-replace(s6, "e", "f")
  s8 = string-replace(s7, "i", "j")
  s9 = string-replace(s8, "o", "p")
  s10 = string-replace(s9, "u", "v")
  print(s10)
end
support.test-encryptor5(HB-encryptor5)

support.encryptor6("Hi Ni0123456789 - = . / , !")
support.encryptor6("abcdefghijklmnopqrstuvwxyz")
support.encryptor6("QWERTYUIOSDFGHJK")
fun HB-encryptor6(s :: String) -> String:
  doc: "Making all the letter in lower case and delete r"
  s-low = string-to-lower(s)
  string-replace(s-low, "r", "")
end
support.test-encryptor6(HB-encryptor6)

support.encryptor7("123456789")
support.encryptor7("12345678o")
support.encryptor7("12")

fun HB-encryptor7(s :: String) -> Number:
  doc: "print the length of the string"
  string-length(s)
end
support.test-encryptor7(HB-encryptor7)

support.encryptor8("123456789")
support.encryptor8("abc")
fun HB-encryptor8(s :: String) -> String:
  doc: "add three ! and repeat it for 3 times"
  s-after = string-append(s, "!!!")
  string-repeat(s-after, 3)
  
end

support.test-encryptor8(HB-encryptor8)

support.encryptor9("123456789")
support.encryptor9("123a5678b")
support.encryptor9("123456789.")
support.encryptor9("9")
support.encryptor9("1")
support.encryptor9("2")
support.encryptor9("a")
fun HB-encryptor9(s :: String) -> Number:
  doc: "showing the last letter's code point "
  s-after = string-substring(s, 0 , 1)
  string-to-code-point(s-after)
end
support.test-encryptor9(HB-encryptor9)


support.encryptor10("123456789")
support.encryptor10("abcd!!!")
support.encryptor10("ABCD OOOPPP")
support.encryptor10("ooop")
support.encryptor10("bRcHf")

fun HB-encryptor10(s :: String) -> String:
  doc: "first making all letter to lower case and delete the r and convert certain letter in HB-encryptor5 and print the first 4 letter for 5 times" 
  s-first = HB-encryptor6(s)
  s-after = HB-encryptor5(s-first)
  HB-encryptor4(s-after)
end
HB-encryptor10("ooop")
support.test-encryptor10(HB-encryptor10)
