//
//  AuthManager.swift
//  Spotify-clone
//
//  Created by Pipe Carrasco on 26-12-21.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = ""
        static let clientSecret = ""
    }
    
    private init(){}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://github.com/pipedev10"
        let base = "https://accounts.spotify.com/authorize"
        let urlComplete = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: urlComplete)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(
        code: String,
        completion: @escaping ((Bool) -> Void)
    ) {
        // Get Token
    }
    
    public func refreshAccessToken(){
        
    }
    
    private func cacheToken(){
        
    }
}
