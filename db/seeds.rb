User.create(email: 'admin@admin.com', password: 'admin1234', admin: true)

(1..10).each do |a|
  Bus.create(name: a.to_s + 'sss',
             from: a.to_s + 'from',
             to: a.to_s + 'to',
             departure: '22:00',
             arrival: '0:00',
             seats: 30)
end
