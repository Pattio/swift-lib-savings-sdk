import Foundation
import Alamofire
import PayseraCommonSDK

public class PSSavingsApiClientFactory {    
    public static func createClient(
        credentials: PSApiJWTCredentials,
        tokenRefresher: PSTokenRefresherProtocol? = nil,
        logger: PSLoggerProtocol? = nil
    ) -> PSSavingsApiClient {
        let session = Session(interceptor: PSRequestAdapter(credentials: credentials))
    
        return PSSavingsApiClient(
            session: session,
            credentials: credentials,
            tokenRefresher: tokenRefresher,
            logger: logger
        )
    }
}
