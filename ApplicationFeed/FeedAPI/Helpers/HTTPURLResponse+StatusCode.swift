//
//  HTTPURLResponse+StatusCode.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 3.1.24..
//

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
