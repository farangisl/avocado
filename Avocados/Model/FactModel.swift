//
//  FactModel.swift
//  Avocados
//
//  Created by Farangis on 29/08/23.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
