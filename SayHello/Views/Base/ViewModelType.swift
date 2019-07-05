//
//  ViewModelType.swift
//  SayHello
//
//  Created by Chính Phạm on 6/1/19.
//  Copyright © 2019 Chính Phạm. All rights reserved.
//

import Foundation

protocol ViewModelType {
    associatedtype Input
    associatedtype Output

    func transform(input: Input) -> Output
}
