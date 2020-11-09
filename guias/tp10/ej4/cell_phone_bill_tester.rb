require_relative 'friends_cell_phone_bill'

fcpb = FriendsCellPhoneBill.new(0, 0.75)
fcpb.add_friend(1)
fcpb.add_friend(2)
fcpb.add_friend(3)
fcpb.register_call(1, 1)
fcpb.register_call(2, 1)
fcpb.register_call(3, 1)
fcpb.register_call(1, 1)
puts fcpb.process_bill

begin
  fcpb.add_friend(4)
  fcpb.add_friend(5)
  fcpb.add_friend(6)
  fcpb.add_friend(7)
  fcpb.add_friend(8)
  fcpb.add_friend(9)
  fcpb.add_friend(10)
rescue => error
  puts error.message
end

fcpb.register_call(1000, 1)
puts fcpb.process_bill
