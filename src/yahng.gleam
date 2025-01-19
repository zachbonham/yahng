import gleam/dict
import gleam/int
import gleam/io
import gleam/list

const adjectives = [
  "red", "green", "yellow", "orange", "azure", "sapphire", "gold", "silver",
  "bronze", "copper", "rusty", "steely", "lavender", "jasmine", "smokey",
  "thicc", "aged", "ancient", "autumn", "billowing", "bitter", "black", "blue",
  "bold", "broad", "broken", "calm", "cold", "cool", "crazy", "crimson", "curly",
  "damp", "dark", "dawn", "delicate", "divine", "dry", "empty", "falling",
  "fancy", "flat", "floral", "fragrant", "frosty", "gentle", "green", "hidden",
  "holy", "hazy", "smelly", "dazzling", "flabby", "elegant", "fancy",
  "glamorous", "gorgeous", "handsome", "scruffy", "unkempt", "agreeable",
  "ambitious", "delightful", "eager", "faithful", "kind", "polite", "silly",
  "thankful", "witty", "wonderful", "colossal", "gigantic", "mammoth", "petite",
  "puny", "short", "teeny", "icy", "jolly", "late", "lingering", "little",
  "lively", "long", "lucky", "misty", "morning", "muddy", "mute", "nameless",
  "noisy", "odd", "old", "orange", "patient", "plain", "polished", "proud",
  "purple", "quiet", "rapid", "raspy", "red", "restless", "rough", "round",
  "royal", "shiny", "shrill", "shy", "silent", "small", "snowy", "soft",
  "solitary", "sparkling", "spring", "square", "steep", "still", "summer",
  "super", "sweet", "throbbing", "tight", "tiny", "twilight", "wandering",
  "weathered", "white", "wild", "winter", "wispy", "withered", "yellow", "young",
]

const nouns = [
  "art", "ape", "band", "bar", "base", "bird", "block", "boat", "bonus", "bread",
  "breeze", "brook", "buffalo", "bush", "butterfly", "cake", "cat", "cougar",
  "cell", "cherry", "cloud", "credit", "cobra", "darkness", "dog", "dragon",
  "dawn", "dew", "disk", "dream", "dust", "feather", "field", "fire", "firefly",
  "flower", "fog", "forest", "frog", "frost", "gazebo", "glade", "glitter",
  "grass", "hall", "hat", "haze", "heart", "hill", "king", "lab", "lake", "leaf",
  "limit", "math", "meadow", "mode", "moon", "morning", "mountain", "mouse",
  "mud", "night", "paper", "pine", "poetry", "pond", "queen", "rain", "recipe",
  "resonance", "rhino", "rice", "river", "salad", "scene", "sea", "shadow",
  "shape", "silence", "sky", "smoke", "snake", "snow", "snowflake", "sound",
  "star", "sun", "sun", "sunset", "surf", "thunder", "tooth", "tree", "truth",
  "union", "violet", "voice", "water", "waterfall", "wave", "wildflower", "wind",
  "wood", "minotaur", "goblin", "orc", "elf", "dwarf", "kobold", "angel",
  "eagle", "bugbear", "chimera", "demon", "ape", "badger", "bat", "shark",
  "wolf", "wolverine", "dryad", "harpy", "hydra", "kraken", "werewolf", "giant",
  "elemental", "genie", "djinn", "ghost", "gnoll", "golem", "gorgon", "mummy",
  "nymph", "ogre", "ooze", "owlbear", "pegasus", "phantom", "salamander",
  "shadow", "scorpion", "skeleton", "spectre", "sprite", "titan", "troll",
  "unicorn", "vampire", "wight", "willow-wisp", "wraith", "wyvern", "zombie",
  "bear", "elephant", "hawk", "horse", "leopard", "lion", "lizard", "octopus",
  "owl", "rat", "raven", "shark", "toad", "tiger", "weasel", "orca", "apple",
  "banana", "mango", "kiwi", "cantaloupe", "potato", "strawberry", "blueberry",
  "grape", "lemon", "lime", "orange", "avocado", "onion", "cherry", "pineapple",
  "peach", "papaya", "apricot", "persimmon", "coconut",
]

fn get_adjective() -> String {
  let index = int.random(list.length(adjectives))

  let m =
    adjectives
    |> list.index_map(fn(x, i) { #(i, x) })
    |> dict.from_list

  case dict.get(m, index) {
    Ok(v) -> v
    _ -> "adjective"
  }
}

fn get_noun() -> String {
  let index = int.random(list.length(nouns))

  let m =
    nouns
    |> list.index_map(fn(x, i) { #(i, x) })
    |> dict.from_list

  case dict.get(m, index) {
    Ok(v) -> v
    _ -> "noun"
  }
}

pub fn get_haiku_name() -> String {
  get_adjective() <> "-" <> get_noun()
}

pub fn main() {
  io.println(get_haiku_name())
}
