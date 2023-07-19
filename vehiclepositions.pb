# header information
header {
  # version of speed specification. Currently "2.0"
  gtfs_realtime_version: "2.0"

  # DIFFERENTIAL is unsupported. use FULL_DATASET only
  incrementality: FULL_DATASET

  # the moment when this dataset was generated on the server
  timestamp: 1656230726
}
# a definition (or update) of an entity in the transit feed
# multiple entities can be included in the feed
# be sure to provide information about EVERY active trip
entity {
  # unique identifier for the entity within the feed update message
  id:    "1"

  # "type" of the entity
  vehicle {
    # a descriptor that identifies an instance of a GTFS trip
    # defines the identifier of a trip in reference to the trips.txt file 
      # it is recommended to provide trip_id, which should be one of the following
      # (1) a trip defined in the static feed 
      # (2) a duplicate trip with schedule_relationship ADDED and new start time 
      # (3) a frequency based trip with a clearly defined start time 
    trip {
      # the trip_id from the GTFS feed that this trip refers to
      trip_id: "trip1"
      # the start time of this trip instance as specified from the GTFS feed
      start_time: "14:05:00"
      # the start date of this trip instance
      # the trip should be active at this start date
      start_date: "20220628"
      # The relation between this trip and the static schedule
      schedule_relationship: SCHEDULED
      # the route_id from the GTFS feed that this trip belongs to
      route_id: "ROUTE1"
      # the direction_id from the GTFS feed that this trip refers to
      direction_id: 0
    }


    # realtime positioning information for a given vehicle
    position {
# Degrees North, in the WGS84 coordinate system
# update latitude with the actual value
      latitude: 123.45
# Degrees East, in the WGS84 coordinate system
# update longitude with the actual value
      longitude: 12.345

    }

    # moment at which the vehicle's position was measured in seconds after epoch
    timestamp: 1656390815

    vehicle {
      # a unique identifier for the vehicle serving this particular trip 
      # the vehicle id must be provided
      id: "vehicle1"
    }
    # the degree of passenger occupancy for the vehicle
    occupancy_status: MANY_SEATS_AVAILABLE
  }
}
  entity {
  id:    "2"
  vehicle {
    trip {
      # the trip_id from the GTFS feed that this added trip is duplicated after
      trip_id: "trip2"
      # the start time of the new added trip instance
      start_time: "14:05:00"
      start_date: "20220628"
      # use “ADDED” to specify an extra trip that was added in addition to 
      # a running schedule
      schedule_relationship: ADDED

    }
    position {
      latitude: 123.45
      longitude: 123.45
    }
    timestamp: 1656390815
    vehicle {
      id: "vehicle2"
    }
    occupancy_status: MANY_SEATS_AVAILABLE
    # details of the multiple carriages of this given vehicle 
    # the number of occurrences of the multi_carriage_details field
    # represents the number of carriages of the vehicle
    # it also includes non boardable carriages, 
    # like engines, maintenance carriages, etc. as they provide 
    # valuable information to passengers about where to stand on a platform
    multi_carriage_details {
         # identification of the carriage, should be unique per vehicle carriage
         id: "1234-1"
          # user visible label that helps passengers identify the carriage
          label: "1"
          # the degree of passenger occupancy for this vehicle’s carriage
          occupancy_status: MANY_SEATS_AVAILABLE
          # identifies the order of this carriage
          carriage_sequence: 1

       }
        multi_carriage_details {
          id: "1234-2"
          label: "2"
          occupancy_status: STANDING_ROOM_ONLY
          carriage_sequence: 2

       }
        multi_carriage_details {
          id: "1234-3"
          label: "3"
          occupancy_status: STANDING_ROOM_ONLY
          carriage_sequence: 3

       }
        multi_carriage_details {
         id: "1234-4"
          label: "4"
          occupancy_status: MANY_SEATS_AVAILABLE
          carriage_sequence: 4

       }
        multi_carriage_details {
         id: "1234-5"
          label: "5"
          occupancy_status: MANY_SEATS_AVAILABLE
          carriage_sequence: 5

       }
        multi_carriage_details {
         id: "1234-6"
          label: "6"
          occupancy_status: MANY_SEATS_AVAILABLE
          carriage_sequence: 6

       }
        multi_carriage_details {
         id: "1234-7"
          label: "7"
          occupancy_status: MANY_SEATS_AVAILABLE
          carriage_sequence: 7

       }
        multi_carriage_details {
         id: "1234-8"
          label: "8"
          occupancy_status: MANY_SEATS_AVAILABLE
          carriage_sequence: 8

       }
   }
}
