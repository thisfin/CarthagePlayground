import RxSwift

_ = Observable.just(0).subscribe(onNext: { (i) in
    print(i)
})

print("over")
