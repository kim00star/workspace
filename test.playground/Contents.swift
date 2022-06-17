import UIKit
/*
// String을 반환하는 클로저
let myName : String = {
    
    return "김지원"
}()

// 클로저 정의
print(myName)

let myRealName : (String) -> String = { (name: String) -> String in
    return "뻘짓하는 \(name)"
}

myRealName("김쪙")
let mRNLogic : (String) -> Void = { (name: String) in
    print("뻘짓하는 \(name)")
}

mRNLogic("정대리 호롤롤로")
*/

func sayHi(completion: () -> Void){
    print("sayHi() called")
    sleep(2) //2초 잠깐 멈추기
    //completion 클로저 실행
    completion()
}

//메소드 호출부에서 이벤트 종료를 알 수 있다.
sayHi(completion: {
    print("2초가 지났다. 1")
})

sayHi(){
    print("2초가 지났네. 2")
}

sayHi {
    print("2초가 지났어. 3")
}

//매개변수로서 데이터를 반환하는 클로저
func sayHiWithName(completion: (String) -> Void){
    print("sayHiWithName() called")
    sleep(2)
    completion("힘내자!")
}

sayHiWithName(completion: { (comment: String) in
    print("반갑다 한마디 할게 comment: ", comment)
})




