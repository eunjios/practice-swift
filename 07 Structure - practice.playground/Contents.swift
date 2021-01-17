import UIKit

// 최고 점수를 가지는 학생의 이름과 점수 출력

// Student 라는 structure 생성
struct Student {
    let name: String
    let score: Int
}

let student1 = Student(name: "Jerry", score: 98)
let student2 = Student(name: "Min", score: 97)
let student3 = Student(name: "Gwan", score: 80)
let student4 = Student(name: "Jay", score: 77)

// 최고 점수를 계산하여 프린트 하는 함수
func printHighScore(students: [Student]) {
    var highScoreName = ""
    var highScore = 0
    
    for student in students {
        if student.score > highScore {
            highScore = student.score
            highScoreName = student.name
        }
    }
    print(highScoreName, highScore)
}

// students Array 로 만들기
let students = [student2, student1, student3, student4]
printHighScore(students: students)

