package com.mt.edgeproxy.domain;

import java.util.Set;

public interface EndpointService {
    Set<Endpoint> loadAllEndpoints();
}
