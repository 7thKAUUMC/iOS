//
//  AuthorizationInterceptor.swift
//  DaumAPI
//
//  Created by 이수현 on 11/10/24.
//

import Foundation
import Alamofire

class AuthorizationInterceptor: RequestInterceptor { // RequesetInterceptor 프로토콜 채택
    private let kakaoKey: String // 카카오 API key 인증 키 , 클래스 내부에서만 접근하게 해 보안성 유지
    
    init(kakaoKey: String) {
        self.kakaoKey = kakaoKey // 키를 파라미터로 받아 프로퍼티에 저장
    }
    
    // RequestInterceptor의 필수 메서드
    // 일관된 설정, 공통 정보를 모든 요청에 추가
    // 이 함수의 경우 매 함수에 Authorization 을 추가하고 있음 (토큰, api key 등등 ...)
    func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, any Error>) -> Void) {
        var request = urlRequest
        request.setValue("KakaoAK \(kakaoKey)", forHTTPHeaderField: "Authorization")
        completion(.success(request)) // 서버로 전달
    }
    
    // request: 실패한 요청 객체
    // 해당 함수의 경우 재시도를 하지 않도록 설정
    func retry(_ request: Request, dueTo error: any Error, for session: Session, completion: @escaping (RetryResult) -> Void) {
        completion(.doNotRetry)
    }
    
}
