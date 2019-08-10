class Pose < ApplicationRecord
  has_and_belongs_to_many :lessons
  belongs_to :teacher

  def pose_arr
    ["Downward-Facing Dog","Handstand","Vishnu's Couch","Crescent Moon","Half moon","Eight-Limbed Salutation","Eight-angled","Bound angle","Crow","Child","Formidable","Bharadvaja's twist","Frog","Cobra","Arm-pressing posture","Cat","Four-Limbed Staff","Low Plank","Staff","Bow","Durvasa's Pose","Embryo in Womb","Eagle","Cow-faced","Cowherd","Gorakhnath's pose","Plough","Hanuman's Pose","Head-to-Knee","Belly twist","Pigeon","Ear-pressing","Kaundinya's pose","Heron","Cockerel","Tortoise","Pendant","Crocodile","Garland","Frog","Marichi's Pose","Fish","Lord of the Fishes","Peacock","Liberated","Dancer","Boat","Lotus","Gate","Extended Side angle","Intense side stretch","Seated Forward Bend","Feathered Peacock","Wide Stance Forward Bend","King Pigeon","Locust","Shoulder Stand","Side splits","Corpse","Shoulder supported bridge","Lion","Headstand","Easy","Big toe supine","Reclined hero","Sun Salutation","Lucky mark","Mountain","Firefly","Triangle","Standing splits","Open Angle","Upwards-facing bow","Wheel","Upward-Facing Dog","Camel","Awkward or Powerful","Standing Forward Bend","Standing Big Toe Hold","Extended Side Angle","Thunderbolt","Side plank","Inverted Staff","Legs up the wall","Reversed Warrior","Warrior I","Warrior II","Warrior III","Hero","Tree","Scorpion","Yogic sleep"]
  end
end
