let fours = [4.0, 0.4 , 2 , 16 , 24 , 0.02 , 0.2 , 0.16 , 256 , 65536 , 0.04 , 0.004 , 0.0004, 0.002]

let Number = CommandLine.arguments[1]

func Calculate(num:Double, runTimes:Int, calculations:String) -> Void{
    if(runTimes > 1){
        for i in fours{
            Calculate(num:num * i, runTimes:runTimes - 1, calculations:calculations + " * " + String(i))
            Calculate(num:num / i, runTimes:runTimes - 1, calculations:calculations + " / " + String(i))
            Calculate(num:num - i, runTimes:runTimes - 1, calculations:calculations + " - " + String(i))
            Calculate(num:num + i, runTimes:runTimes - 1, calculations:calculations + " + " + String(i))
        }
    }
    else if(num == Double(Number)){
        print(calculations)
    }
}

for i in fours{
    Calculate(num:i,runTimes:4,calculations:String(i))
}
