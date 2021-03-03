//
//  ApiResponse.swift
//  DeepDental
//
//  Created by Devoir Macbook on 21/12/19.
//  Copyright © 2019 Devoir Macbook. All rights reserved.
//

import UIKit
import Alamofire
import SVProgressHUD

@available(iOS 13.0, *)
class GetApiResponse: UIViewController {
    
    static let shared = GetApiResponse()
    
    struct FileDataStruct {
        var paramName:String?
        var url:URL?
        var data:Data?
        var pathExtension:String?
        var lastPathComponent:String?
    }
    
    
    //MARK:- GenericsFunction
    
    @available(iOS 13.0, *)
    func getDataAll<T: Decodable>(api:String,parameters:[String:Any],method:HTTPMethod = .post,completion: @escaping(T)->())  {
        ApiService.shared.apiRequest2(api: api, method: method, parameters: parameters) { (data) in
            guard let data = data else { return }
            do{
                let res = try JSONDecoder().decode(T.self, from: data)
                completion(res)
            }catch{
                print("Error on parsing")
            }
        }
    }
    
//    @available(iOS 13.0, *)
//    func getDataAllSilent<T: Decodable>(api:String,parameters:[String:Any],completion: @escaping(T)->())  {
//        ApiService.shared.apiRequest(api: api, method: .post, parameters: parameters) { (data) in
//
//            guard let data = data else { return }
//            do{
//                let res = try JSONDecoder().decode(T.self, from: data)
//                completion(res)
//            }catch{
//                print("Error on parsing")
//            }
//        }
//    }
//
//    func dataAll<T: Decodable>(api:String,parameters:[String:Any],completion: @escaping(T)->())  {
//           ApiService.shared.apiRequest(api: api, method: .get, parameters: parameters) { (data) in
//
//               guard let data = data else { return }
//               do{
//                   let res = try JSONDecoder().decode(T.self, from: data)
//                   completion(res)
//               }catch{
//                   print("Error on parsing")
//               }
//           }
//       }
//
//    //MARK:- Multi-Part Api
//  func callApiMultiPartData<T: Decodable>(api:String,fileValue:[MultipartParametersStruct],parameters:[String:Any],completion: @escaping(T?)->()){
//        ApiService.shared.apiRequestMulipart(api: api, fileValue: fileValue, parameters: parameters) { (data) in
//            guard let data = data else { return }
//            do{
//                let res = try JSONDecoder().decode(T.self, from: data)
//                completion(res)
//            }catch{
//                completion(nil)
//                print("Error on parsing")
//            }
//        }
//    }
    
    //MARK:- Smart Api
//    func sendOtp<T: Decodable>(params:[String:Any],completion: @escaping(T)->()) {
//        GetApiResponse.shared.getDataAll(api: "send-otp",parameters: params, method: .post) { (data: T) in
//            completion(data)
//        }
//    }
//
 
    
//    func expiredOtp<T: Decodable>(params:[String:Any],completion: @escaping(T)->()) {
//        GetApiResponse.shared.getDataAllSilent(api: "expire-otp",parameters: params) { (data: T) in
//            completion(data)
//        }
//    }
}


