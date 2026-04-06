// Convert at least 2 entities to MongoDB Collections. Write the scripts that will Create the collection(s)

use("fitness_center");

db.createCollection("locations");

db.locations.insertMany([
  {
    locationID: 1,
    locationName: "Downtown Hub",
    address: "123 King St W, Toronto, ON",
    telephone: "416-555-1001",
    email: "downtown@gym.com",
    amenities: ["Swimming Pool", "Sauna", "Spin Studio"]
  },
  {
    locationID: 2,
    locationName: "Midtown Studio",
    address: "456 Yonge St, Toronto, ON",
    telephone: "416-555-1002",
    email: "midtown@gym.com",
    amenities: ["Yoga Room", "Juice Bar"]
  },
  {
    locationID: 3,
    locationName: "Scarborough East",
    address: "789 Sheppard Ave E, Scarborough, ON",
    telephone: "416-555-1003",
    email: "scarb@gym.com",
    amenities: ["Parking"]
  },
  {
    locationID: 4,
    locationName: "Mississauga West",
    address: "321 Hurontario St, Mississauga, ON",
    telephone: "905-555-1004",
    email: "miss@gym.com",
    amenities: ["Childcare"]
  },
  {
    locationID: 5,
    locationName: "Brampton North",
    address: "654 Bovaird Dr, Brampton, ON",
    telephone: "905-555-1005",
    email: "brampton@gym.com",
    amenities: ["Parking"]
  },
  {
    locationID: 6,
    locationName: "North York",
    address: "987 Finch Ave W, North York, ON",
    telephone: "416-555-1006",
    email: "northyork@gym.com",
    amenities: ["Swimming Pool"]
  }
]);

db.createCollection("coaches");

db.coaches.insertMany([
  {
    coachID: 1,
    firstName: "Jordan",
    lastName: "Park",
    level: "Senior",
    avgRating: 4.8,
    trainingPhilosophy: "Strength-first progressive overload",
    locations: ["Downtown Hub"],
    certificates: [
      { certID: 1, dateObtained: "2018-06-15" },
      { certID: 2, dateObtained: "2019-03-20" }
    ],
    references: [
      { clientName: "Marcus Reid",  clientPhone: "416-555-7001", clientEmail: "mreid@corp.com" },
      { clientName: "Sandra Liu",   clientPhone: "647-555-7002", clientEmail: "sliu@health.ca" }
    ]
  },
  {
    coachID: 2,
    firstName: "Maya",
    lastName: "Chen",
    level: "Intermediate",
    avgRating: 4.5,
    trainingPhilosophy: "Holistic mind-body wellness approach",
    locations: ["Midtown Studio"],
    certificates: [
      { certID: 6, dateObtained: "2020-07-10" }
    ],
    references: [
      { clientName: "Tom Bakker", clientPhone: "905-555-7003", clientEmail: "tbakker@fit.com" }
    ]
  },
  {
    coachID: 3,
    firstName: "Liam",
    lastName: "Nguyen",
    level: "Senior",
    avgRating: 4.9,
    trainingPhilosophy: "HIIT and metabolic conditioning",
    locations: ["Scarborough East"],
    certificates: [
      { certID: 4, dateObtained: "2017-11-05" },
      { certID: 5, dateObtained: "2021-04-22" }
    ],
    references: [
      { clientName: "Nina Osei",   clientPhone: "416-555-7004", clientEmail: "nosei@wellness.ca" },
      { clientName: "Carlos Vega", clientPhone: "647-555-7005", clientEmail: "cvega@active.ca" }
    ]
  },
  {
    coachID: 4,
    firstName: "Sophia",
    lastName: "Roberts",
    level: "Junior",
    avgRating: 4.2,
    trainingPhilosophy: "Functional movement and mobility",
    locations: ["Brampton North"],
    certificates: [],
    references: []
  },
  {
    coachID: 5,
    firstName: "Ethan",
    lastName: "Davis",
    level: "Intermediate",
    avgRating: 4.6,
    trainingPhilosophy: "Endurance and cardio periodisation",
    locations: ["Mississauga West", "North York"],
    certificates: [
      { certID: 1, dateObtained: "2019-08-30" }
    ],
    references: [
      { clientName: "Rachel Stone", clientPhone: "905-555-7006", clientEmail: "rstone@run.com" }
    ]
  },
  {
    coachID: 6,
    firstName: "Ava",
    lastName: "Thompson",
    level: "Senior",
    avgRating: 4.7,
    trainingPhilosophy: "Olympic lifting and power development",
    locations: ["Downtown Hub"],
    certificates: [
      { certID: 7, dateObtained: "2016-05-14" }
    ],
    references: [
      { clientName: "Derek Huang", clientPhone: "416-555-7007", clientEmail: "dhuang@lift.ca" }
    ]
  }
]);
