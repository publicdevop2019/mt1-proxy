package com.hw.aggregate.revoke_token.model;

import com.mt.common.sql.builder.SoftDeleteQueryBuilder;
import org.springframework.stereotype.Component;

@Component
public class RootRevokeTokenDeleteQueryBuilder extends SoftDeleteQueryBuilder<RevokeToken> {
}
