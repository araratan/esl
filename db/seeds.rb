users = [
    {firstname: "John", lastname: "Doe", email: "john@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Jirah", lastname: "Morales", email: "jirah@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Andrew", lastname: "Morales", email: "andrew@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Eric", lastname: "Ong", email: "eric@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Rica", lastname: "De Vera", email: "rica@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Ricky", lastname: "Yao", email: "ricky@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Ron", lastname: "Del Pilar", email: "ron@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Jeff", lastname: "Lopez", email: "jeff@example.com", password: "password", password_confirmation: "password"},
    {firstname: "David", lastname: "Ang", email: "david@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Alex", lastname: "Tan", email: "alex@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Peter", lastname: "Rich", email: "peter@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Jason", lastname: "Ning", email: "jason@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Carla", lastname: "Repato", email: "carla@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Jerry", lastname: "Yan", email: "jerry@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Jerico", lastname: "Peralta", email: "jerico@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Ben", lastname: "Lomibao", email: "ben@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Francis", lastname: "Perez", email: "francis@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Grace", lastname: "Lintan", email: "grace@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Mark", lastname: "Fernandez", email: "mark@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Paul", lastname: "Soldao", email: "paul@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Tyra", lastname: "Blanca", email: "tyra@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Efren", lastname: "Reyes", email: "efren@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Ezperanza", lastname: "Fabian", email: "ezperanza@example.com", password: "password", password_confirmation: "password"},
    {firstname: "Geraldine", lastname: "Casulming", email: "geraldine@example.com", password: "password", password_confirmation: "password"}
]

users.each do |user|
  user = User.create!(user)
  Teacher.create!(user_id: user.id)
end

sched_time = [
    {from_time: "00:00:00", to_time: "00:30:00" },
    {from_time: "01:00:00", to_time: "01:30:00" },
    {from_time: "02:00:00", to_time: "02:30:00" },
    {from_time: "03:00:00", to_time: "03:30:00" },
    {from_time: "04:00:00", to_time: "04:30:00" },
    {from_time: "05:00:00", to_time: "05:30:00" },
    {from_time: "06:00:00", to_time: "06:30:00" },
    {from_time: "07:00:00", to_time: "07:30:00" },
    {from_time: "08:00:00", to_time: "08:30:00" },
    {from_time: "09:00:00", to_time: "09:30:00" },
    {from_time: "10:00:00", to_time: "10:30:00" },
    {from_time: "11:00:00", to_time: "11:30:00" },
    {from_time: "12:00:00", to_time: "12:30:00" },
    {from_time: "13:00:00", to_time: "13:30:00" },
    {from_time: "14:00:00", to_time: "14:30:00" },
    {from_time: "15:00:00", to_time: "15:30:00" },
    {from_time: "16:00:00", to_time: "16:30:00" },
    {from_time: "17:00:00", to_time: "17:30:00" },
    {from_time: "18:00:00", to_time: "18:30:00" },
    {from_time: "19:00:00", to_time: "19:30:00" },
    {from_time: "20:00:00", to_time: "20:30:00" },
    {from_time: "21:00:00", to_time: "21:30:00" },
    {from_time: "22:00:00", to_time: "22:30:00" },
    {from_time: "23:00:00", to_time: "23:30:00" }
]

# dd-mm-yyyy HH:MM:SS
dates = ["01-08-2016 00:00:00", "02-08-2016 00:00:00", "03-08-2016 00:00:00"]
Teacher.all.each_with_index do |teacher, i|
  teacher.update_attributes(sched_time[i])

  dates.each do |date|
    Schedule.create!(teacher_id: teacher.id, schedule_date: date.to_datetime)
  end
end