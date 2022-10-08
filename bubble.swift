var words = [String]()
while let line = readLine() {
    words.append(line)
}
func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    integers.swapAt(firstIndex, secondIndex)
}
var answer = words
var pass = 0
var totalswaps = 0
var swaps = 0
print("Pass: \(pass), Swaps: \(swaps)/\(totalswaps), Array: \(answer)")
for _ in 0 ..< words.count {
    pass += 1
    let p = answer.count - 2
    if p > -1 {
        for y in 0 ... p {
            if answer[y] > answer[y+1] {
                swap(integers: &answer, firstIndex: y, secondIndex: y+1)
                swaps += 1
                totalswaps += 1
            }
        }
        if answer != words {
            print("Pass: \(pass), Swaps: \(swaps)/\(totalswaps), Array: \(answer)")
        } else {
            break
        }
        swaps = 0
        words = answer
    }
}
print("Pass: \(pass), Swaps: \(swaps)/\(totalswaps), Array: \(answer)")
