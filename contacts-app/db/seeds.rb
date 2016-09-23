Contact.create!([
  {first_name: "Johnny", last_name: "Depp", email: "johnnydepp@gmail.com", phone_number: "213-555-1212", middle_name: "Christopher"},
  {first_name: "Leonardo", last_name: "DiCaprio", email: "leodicaprio@gmail.com", phone_number: "213-555-1234", middle_name: "Wilhelm"},
  {first_name: "Robert", last_name: "de Niro", email: "bobdeniro@gmail.com", phone_number: "213-555-5151", middle_name: "Anthony"},
  {first_name: "Thomas", last_name: "Hanks", email: "tomhanks@gmail.com", phone_number: "213-555-8888", middle_name: "Jeffrey"},
  {first_name: "Robert", last_name: "Downey jr.", email: "bobdowney@gmail.com", phone_number: "213-555-4444", middle_name: ""},
  {first_name: "Brad", last_name: "Pitt", email: "bradpitt@gmail.com", phone_number: "213-555-8765", middle_name: "(William)"},
  {first_name: "Daniel", last_name: "Day-Lewis", email: "dan@gmail.com", phone_number: "213-555-4242", middle_name: ""},
  {first_name: "Christian", last_name: "Bale", email: "chris@gmail.com", phone_number: "213-555-2131", middle_name: "Charles Philip"}
])
Group.create!([
  {name: "Business"},
  {name: "Personal"},
  {name: "Family"},
  {name: "Friends"}
])
GroupContact.create!([
  {group_id: 2, contact_id: 1},
  {group_id: 1, contact_id: 1},
  {group_id: 3, contact_id: 1},
  {group_id: 4, contact_id: 1},
  {group_id: 1, contact_id: 2},
  {group_id: 2, contact_id: 3},
  {group_id: 4, contact_id: 3},
  {group_id: 3, contact_id: 4},
  {group_id: 1, contact_id: 5},
  {group_id: 3, contact_id: 5}
])
User.create!([
  {name: "joy", email: "joy@gmail.com", password_digest: "$2a$10$7ZFPUJO3X9QuDE7zqKrY4OCDT3lxkClGlDwkL6UHFgX9PwtoK0dhS"},
  {name: "Joe", email: "joe@gmail.com", password_digest: "$2a$10$cAjHQ/x.E7o9J.qBtvu8gObUa5CncFbCV2.tehZFRFjZvLgoA/7pe"}
])
