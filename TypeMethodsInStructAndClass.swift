//type methods with instance and type variables

struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    @discardableResult
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "Argyrios")
// player.complete(level: 1)
// player.complete(level: 2)
// player.complete(level: 3)
// player.complete(level: 4)
player.complete(level: 5)
print("player name is now \(player.playerName)")
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
// Prints "highest unlocked level is now 2"


player = Player(name: "Beto")
print("player name is now \(player.playerName)")
if player.tracker.advance(to: 6) {
    print("player is now on level 6")
} else {
    print("level 6 has not yet been unlocked")
}
// Prints "level 6 has not yet been unlocked"

var playerNew = Player(name: "khalid")
	if playerNew.tracker.advance(to: 5){
		print("hurray \(playerNew.playerName) am on level \(playerNew.tracker.currentLevel) and \(player.playerName) is on \(player.tracker.currentLevel)")
	}

print(LevelTracker.highestUnlockedLevel)
