//
//  NetworkService.swift
//  TravelApp
//
//  Created by Promise Ochornma on 08/05/2023.
//

import Foundation
import CombineMoya
import Moya
import Combine

protocol NetworkingProtocol{
    associatedtype Target:TargetType
    func request<T: Codable>( _ target: Target) -> Future<T, Error>
}


final class Networking<Target: TargetType>:NetworkingProtocol{
    private let provider: MoyaProvider<Target>
    private var cancellable = Set<AnyCancellable>()
    
    init(provider: MoyaProvider<Target> = MoyaProvider<Target>()) {
        self.provider = provider
    }
    
    
    func request<T: Codable>( _ target: Target) -> Future<T, Error>{
        return Future<T, Error> { promise in
            self.provider.requestPublisher(target)
                .sink(receiveCompletion: { completion in
                    guard case let .failure(error) = completion else { return }
                    promise(.failure(error))
                }, receiveValue: { response in
                    do{
                        let data = try response.map(T.self)
                        promise(.success(data))
                    }catch let error{
                        promise(.failure(error))
                    }
                })
                .store(in: &self.cancellable)
        }
        
    }
}

