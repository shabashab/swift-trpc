//
//  TrpcClientProtocol.swift
//  swift-trpc
//
//  Created by Artem Tarasenko on 15.11.2024.
//

public protocol TrpcClientProtocol {
    var serverUrl: String { get }
    var baseHeaders: [String:String] { get }
    
    @discardableResult
    func execute<T>(request: any TrpcRequestProtocol, responseType: T.Type) async throws -> TrpcResponse<T> where T : Decodable
    
    @discardableResult
    func executeBatch(requests: [any TrpcRequestProtocol]) async throws -> TrpcBatchResponseProtocol;
}
