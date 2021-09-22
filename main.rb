# 1. Buat Array Kosong
users = []

# 2. Tambahkan user baru, yang diinput dari console dengan memasukkan username dan password
puts "=" * 40
puts "Register"
puts "=" * 40

print "Username : "
username = gets.chomp
print "Password : "
password = gets.chomp

users.push({:username => username, :password => password})

puts ""
puts "=" * 40
puts "Login"
puts "=" * 40

# 3. Setelah user ditambahkan minta user tersebut untuk login menggunakan username password
# 4. Percobaan maksimum 3x
status = ""
block = 0
3.times do
    block+=1
    print "Username : "
    username = gets.chomp
    print "Password : "
    password = gets.chomp
    cek = users.select{ |user| user[:username] == username && user[:password] == password} 
    if cek.empty?
        puts ""
        puts "=" * 40
        puts block < 3 ? "Username or password is wrong, try again!\nChance to try #{3 - block} more times" : "User blocked!"
        puts "=" * 40
    else
        puts ""
        puts "=" * 40
        puts "Success Login! User is #{username}"
        puts "=" * 40
        break
    end
end
