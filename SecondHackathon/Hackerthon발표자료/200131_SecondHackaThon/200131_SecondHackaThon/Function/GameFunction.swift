//
//  GameFunction.swift
//  200131_SecondHackaThon
//
//  Created by Demian on 2020/02/01.
//  Copyright © 2020 Demian. All rights reserved.
//
///Includede Correct Animation
import UIKit
import Foundation
import Firebase
import FirebaseAuth

//struct AnswerCheck {
class AnswerCheck {
  
  static var scoreCount = 0
  static var bestScore0 = 0
  static var bestScore60 = 0
  static var bestScore120 = 0
  
  static var opportunity = 2 //hard모드 오답기회
  
  static var temp: [String] = []
  static var cells: [[String]] = []
  static var answer:[[Int]] = []
  
  /// 단순 radomImage 1개 추출
  static func doRandom() -> String {
    guard let number = (0...26).randomElement() else { return "" }
    let pickOne = CardLoad.cardList[number].imageName
    return pickOne
  }
  /// 최초 실행 시, Random Images 생성
  static func randomImages() {
    repeat {
      GameScreenViewController.images = []
      while GameScreenViewController.images.count < 9 {
        let pickOne = AnswerCheck.doRandom()
        if !GameScreenViewController.images.contains(pickOne) {
          GameScreenViewController.images.append(pickOne)
        }
      }
      print(GameScreenViewController.images)
      checkCombination()
    } while answer.count == 0
  }
  
  //MARK: 정답확인
  static func checkAnswer(_ collectionView: UICollectionView){
    // selectedItemArr와 answer배열 비교해서 정답 확인!
    let coView = collectionView
    if answer.contains(GameScreenViewController.selectedItemArr.sorted()) {
      var indexs = [IndexPath]()
      GameScreenViewController.selectedItemArr.forEach {
        let temp = IndexPath(item: $0, section: 0)
        indexs.append(temp)
      }
      indexs.forEach {
        guard let cell = collectionView.cellForItem(at: $0) as? CustomCell else { return }
        cell.answerSelectCells()
      }
      scoreCount += 1
      DispatchQueue.main.asyncAfter(deadline: .now()+0.2) {
        repeat {
          for i in GameScreenViewController.selectedItemArr {
            var pickOne = ""
            repeat {
              pickOne = doRandom()
            } while GameScreenViewController.images.contains(pickOne)
            GameScreenViewController.images[i] = pickOne
          }
          coView.reloadData()
          answer = []
          checkCombination()
        } while answer.count == 0
        print("answer: ", answer)
  
        GameScreenViewController.selectedItemArr = []
      }
    } else {
      switch TimeOptionViewController.userSelectLevel {
      case "Normal":
        GameScreenViewController.selectedItemArr = []
        coView.reloadData()
      case "Hard":
        opportunity -= 1
        GameScreenViewController.selectedItemArr = []
        coView.reloadData()
      default:
        print("userSelectLevel")
      }
    }
  }
  static func checkCombination() {
    defer {
      GameScreenViewController.showLabel.text = "👌🏻 \(answer.count)개!"
    }
    // 전체 셀에서 조건에 부합하는 조합이 몇개 있는지 answer에 저장
    answer = []
    cells = []
    // Cell 전체 images의 이름을 각각 항목별로 쪼개기
    for i in GameScreenViewController.images {
      temp = i.components(separatedBy: "_")
      cells.append(temp)
    }
    var compare: [Int] = []   // 1) 같은 모양, 다른 색상, 같은 무늬
    var compare2: [Int] = []  // 2) 다른 모양, 같은 색상, 같은 무늬
    var compare3: [Int] = []  // 3) 같은 모양, 같은 색상, 다른 무늬
    var compare4: [Int] = []  // 4) 같은 모양, 다른 색상, 다른 무늬
    var compare5: [Int] = []  // 5) 다른 모양, 다른 색상, 같은 무늬
    var compare6: [Int] = []  // 6) 다른 모양, 같은 색상, 다른 무늬
    var compare7: [Int] = []  // 7) 다른 모양, 다른 색상, 다른 무늬
    // 조건에 부합하는 조합 찾아 answer 배열에 저장하기
    for i in 0...8 {
      compare = []
      compare2 = []
      compare3 = []
      for j in 0...8 {
        compare4 = []
        compare5 = []
        compare6 = []
        compare7 = []
        if cells[i][0] == cells[j][0] && cells[i][2] == cells[j][2] {
          compare.append(j)
        }
        if cells[i][1] == cells[j][1] && cells[i][2] == cells[j][2] {
          compare2.append(j)
        }
        if cells[i][0] == cells[j][0] && cells[i][1] == cells[j][1] {
          compare3.append(j)
        }
        if cells[i][0] == cells[j][0] && !cells[j].contains(cells[i][1]) && !cells[j].contains(cells[i][2]) {
          var temp = ""
          var colors = ["yellow", "blue", "red"]
          var patterns = ["blank", "line", "solid"]
          colors.remove(at: colors.firstIndex(of: cells[i][1])!)
          colors.remove(at: colors.firstIndex(of: cells[j][1])!)
          patterns.remove(at: patterns.firstIndex(of: cells[i][2])!)
          patterns.remove(at: patterns.firstIndex(of: cells[j][2])!)
          temp = cells[i][0] + "_" + colors[0] + "_" + patterns[0]
          if let n = GameScreenViewController.images.firstIndex(of: temp) {
            compare4.append(i)
            compare4.append(j)
            compare4.append(n)
          }
        }
        if cells[i][2] == cells[j][2] && !cells[j].contains(cells[i][0]) && !cells[j].contains(cells[i][1]) {
          var temp = ""
          var shapes = ["rectangle", "triangle", "circle"]
          var colors = ["yellow", "blue", "red"]
          shapes.remove(at: shapes.firstIndex(of: cells[i][0])!)
          shapes.remove(at: shapes.firstIndex(of: cells[j][0])!)
          colors.remove(at: colors.firstIndex(of: cells[i][1])!)
          colors.remove(at: colors.firstIndex(of: cells[j][1])!)
          temp = shapes[0] + "_" + colors[0] + "_" + cells[i][2]
          if let n = GameScreenViewController.images.firstIndex(of: temp) {
            compare5.append(i)
            compare5.append(j)
            compare5.append(n)
          }
        }
        if cells[i][1] == cells[j][1] && !cells[j].contains(cells[i][0]) && !cells[j].contains(cells[i][2]) {
          var temp = ""
          var shapes = ["rectangle", "triangle", "circle"]
          var patterns = ["blank", "line", "solid"]
          shapes.remove(at: shapes.firstIndex(of: cells[i][0])!)
          shapes.remove(at: shapes.firstIndex(of: cells[j][0])!)
          patterns.remove(at: patterns.firstIndex(of: cells[i][2])!)
          patterns.remove(at: patterns.firstIndex(of: cells[j][2])!)
          temp = shapes[0] + "_" + cells[i][1] + "_" + patterns[0]
          if let n = GameScreenViewController.images.firstIndex(of: temp) {
            compare6.append(i)
            compare6.append(j)
            compare6.append(n)
          }
        }
        if !cells[j].contains(cells[i][0]) && !cells[j].contains(cells[i][1]) && !cells[j].contains(cells[i][2]) {
          var temp = ""
          var shapes = ["rectangle", "triangle", "circle"]
          var colors = ["blue", "yellow", "red"]
          var pattern = ["blank", "line", "solid"]
          shapes.remove(at: shapes.firstIndex(of: cells[i][0])!)
          shapes.remove(at: shapes.firstIndex(of: cells[j][0])!)
          colors.remove(at: colors.firstIndex(of: cells[i][1])!)
          colors.remove(at: colors.firstIndex(of: cells[j][1])!)
          pattern.remove(at: pattern.firstIndex(of: cells[i][2])!)
          pattern.remove(at: pattern.firstIndex(of: cells[j][2])!)
          temp = shapes[0] + "_" + colors[0] + "_" + pattern[0]
          if let n = GameScreenViewController.images.firstIndex(of: temp) {
            compare7.append(i)
            compare7.append(j)
            compare7.append(n)
          }
        }
        if compare4.count == 3 && !answer.contains(compare4.sorted()){
          print("compare4:", compare4.sorted())
          answer.append(compare4.sorted())
        }
        else if compare5.count == 3 && !answer.contains(compare5.sorted()) {
          print("compare5:", compare5)
          answer.append(compare5.sorted())
        }
        else if compare6.count == 3 && !answer.contains(compare6.sorted()) {
          print("compare6: ", compare6)
          answer.append(compare6.sorted())
        }
        else if compare7.count == 3 && !answer.contains(compare7.sorted()) {
          print("compare7:", compare7)
          answer.append(compare7.sorted())
        }
      }
      if compare.count == 3 && !answer.contains(compare) {
        answer.append(compare)
        print("compare:", compare)
      } else if compare2.count == 3 && !answer.contains(compare2) {
        print("compare2:", compare2)
        answer.append(compare2)
      } else if compare3.count == 3 && !answer.contains(compare3){
        print("compare3:", compare3)
        answer.append(compare3)
      }
    }
  }
}
