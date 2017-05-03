struct TestingWillsetAndDidset {
	var runs: Int = 0 {
	
	willSet{
		print("runs are updated to \(newValue) \n ")
	}
	didSet{
		print("here is the old value of runs \(oldValue) \n ")
		print("The new increment of runs is \(runs - oldValue) \n ")
	}
  }	
}

var test = TestingWillsetAndDidset()
test.runs = 200

test.runs = 500


// another example

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue  {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 7000

