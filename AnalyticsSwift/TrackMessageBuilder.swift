// The MIT License (MIT)
//
// Copyright © 2015 Segment, Inc.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

public class TrackMessageBuilder: MessageBuilder {
    private var dictionary: [String: AnyObject] = [:]

    public init(event: String) {
        dictionary["type"] = "track" as AnyObject
        dictionary["event"] = event as AnyObject
    }

    public func properties(properties: [String: AnyObject]) -> TrackMessageBuilder {
        dictionary["properties"] = properties as AnyObject
        return self
    }
  
    // Common

    public func userId(_ userId: String) -> TrackMessageBuilder {
        dictionary["userId"] = userId as AnyObject
        return self
    }
  
    public func anonymousId(_ anonymousId: String) -> TrackMessageBuilder {
        dictionary["anonymousId"] = anonymousId as AnyObject
        return self
    }
  
    public func context(_ context: [String: AnyObject]) -> TrackMessageBuilder {
        dictionary["context"] = context as AnyObject
        return self
    }
  
    public func build() -> [String: AnyObject] {
        return dictionary
    }
    
    public func type() -> String {
        return "track"
    }
}
