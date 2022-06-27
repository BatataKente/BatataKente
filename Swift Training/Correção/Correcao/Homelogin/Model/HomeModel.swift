//
//  HomeModel.swift
//  Correcao
//
//  Created by Josicleison Elves on 05/05/22.
//

struct Post: Codable
{
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

struct Welcome: Codable
{
    let slip: Slip
}

struct Slip: Codable
{
    let id: Int
    let advice: String
}
