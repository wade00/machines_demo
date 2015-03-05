machine_info = [
  {
    :stock_number => "39999",
    :year => 2014,
    :machine_make => "Hyundai",
    :machine_model => "R330",
    :machine_type => "Excavator",
    :serial => "HY345R330678",
    :hours => 45,
    :price => 99000,
    :location => "Orland Park, IL",
    :description => "36 inch tracks, 10 foot boom, 8 foot arm, cab with heater, suspension seat, rearview camera, JRB quick coupler, N&B piping, 60 inch bucket with teeth"
  },
  {
    :stock_number => "39808",
    :year => 2013,
    :machine_make => "New Holland",
    :machine_model => "L225",
    :machine_type => "Skid Steer Loader",
    :serial => "NDM456789",
    :hours => 203,
    :price => 45000,
    :location => "Orland Park, IL",
    :description => "2-speed drive, cab with heater and A/C, suspension seat, manual quick coupler, block heater, turn signals, High Flow, 12 x 16.5 tires, 72 inch LPE bucket with bolt-on edge"
  },
  {
    :stock_number => "39800",
    :year => 1997,
    :machine_make => "New Holland",
    :machine_model => "LS170",
    :machine_type => "Skid Steer Loader",
    :serial => "LMU27384949",
    :hours => 888,
    :price => 19000,
    :location => "South Elgin, IL",
    :description => "2-speed drive, cab with heater and A/C, suspension seat, manual quick coupler, block heater, turn signals, High Flow, 12 x 16.5 tires, 72 inch LPE bucket with bolt-on edge"
  },
  {
    :stock_number => "39700",
    :year => 2010,
    :machine_make => "Finn",
    :machine_model => "T90",
    :machine_type => "Hydroseeder",
    :serial => "8392829282",
    :hours => 378,
    :price => 49000,
    :location => "Wauconda, IL",
    :description => "3 nozzles, 90 hp Kubota diesel engine"
  },
  {
    :stock_number => "38999",
    :year => 1998,
    :machine_make => "New Holland",
    :machine_model => "L180",
    :machine_type => "Skid Steer Loader",
    :serial => "LMU36282910",
    :hours => 1009,
    :price => 25000,
    :location => "South Elgin, IL",
    :description => "2-speed drive, cab with heater and A/C, suspension seat, manual quick coupler, block heater, turn signals, High Flow, 12 x 16.5 tires, 72 inch LPE bucket with bolt-on edge"
  },
  {
    :stock_number => "38990",
    :year => 1999,
    :machine_make => "New Holland",
    :machine_model => "LS180",
    :machine_type => "Skid Steer Loader",
    :serial => "LMU36288866",
    :hours => 1200,
    :price => 28000,
    :location => "South Elgin, IL",
    :description => "2-speed drive, cab with heater and A/C, suspension seat, manual quick coupler, block heater, turn signals, High Flow, 12 x 16.5 tires, 72 inch LPE bucket with bolt-on edge"
  },
  {
    :stock_number => "38900",
    :year => 2013,
    :machine_make => "New Holland",
    :machine_model => "L220",
    :machine_type => "Skid Steer Loader",
    :serial => "NDM234987",
    :hours => 250,
    :price => 33500,
    :location => "Wauconda, IL",
    :description => "2-speed drive, cab with heater and A/C, suspension seat, manual quick coupler, block heater, turn signals, 10 x 16.5 tires, 66 inch LPE bucket with bolt-on edge"
  },
  {
    :stock_number => "38899",
    :year => 2010,
    :machine_make => "Screen Machine",
    :machine_model => "77C",
    :machine_type => "Aggregate Screener",
    :serial => "SM77C92928390",
    :hours => 888,
    :price => 70000,
    :location => "Orland Park, IL",
    :description => "double 3/8 inch wire screens, truck hitch"
  },
  {
    :stock_number => "38832",
    :year => 2011,
    :machine_make => "Finn",
    :machine_model => "T75",
    :machine_type => "Hydroseeder",
    :serial => "FC839029837",
    :hours => 777,
    :price => 40000,
    :location => "South Elgin, IL",
    :description => ""
  },
  {
    :stock_number => "38815",
    :year => 2010,
    :machine_make => "Finn",
    :machine_model => "BB302",
    :machine_type => "Bark Blower",
    :serial => "FC839023345",
    :hours => 790,
    :price => 55000,
    :location => "Wauconda, IL",
    :description => "33.5 hp Kubota diesel engine"
  },
  {
    :stock_number => "38800",
    :year => 2009,
    :machine_make => "New Holland",
    :machine_model => "L190",
    :machine_type => "Skid Steer Loader",
    :serial => "LMU7778202",
    :hours => 550,
    :price => 40000,
    :location => "South Elgin, IL",
    :description => "2-speed drive, cab with heater and A/C, suspension seat, manual quick coupler, block heater, turn signals, High Flow, 14 x 17.5 tires, 78 inch LPE bucket with bolt-on edge"
  }
]

machine_info.each do |machine_hash|
  m = Machine.new
  m.stock_number = machine_hash[:stock_number]
  m.year = machine_hash[:year]
  m.machine_make = machine_hash[:machine_make]
  m.machine_model = machine_hash[:machine_model]
  m.machine_type = machine_hash[:machine_type]
  m.serial = machine_hash[:serial]
  m.hours = machine_hash[:hours]
  m.price = machine_hash[:price]
  m.location = machine_hash[:location]
  m.description = machine_hash[:description]
  m.save
end

puts "There are now #{Machine.count} machines in the database."
