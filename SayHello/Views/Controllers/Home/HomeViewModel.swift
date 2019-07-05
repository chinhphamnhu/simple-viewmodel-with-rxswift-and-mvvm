//
//  HomeViewModel.swift
//  SayHello
//
//  Created by Chính Phạm on 6/1/19.
//  Copyright © 2019 Chính Phạm. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

final class HomeViewModel: ViewModelType {

    // MARK: - Struct

    struct Input {
        let name: Observable<String>
        let validate: Observable<Void>
    }

    struct Output {
        let greeting: Driver<String>
    }

    // MARK: - Public Functions

    func transform(input: Input) -> Output {
        let greeting = input.validate
            .withLatestFrom(input.name)
            .map { return "Xin chào " + $0 + ($0.isEmpty ? "😱" : " 😂") }
            .startWith("")
            .asDriver(onErrorJustReturn: ": 😱")
        
        return Output(greeting: greeting)
    }
}
