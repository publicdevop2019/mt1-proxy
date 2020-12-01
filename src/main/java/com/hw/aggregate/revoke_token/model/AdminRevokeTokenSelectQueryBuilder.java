package com.hw.aggregate.revoke_token.model;

import com.hw.shared.sql.builder.SelectQueryBuilder;
import com.hw.shared.sql.clause.SelectFieldLongEqualClause;
import org.springframework.stereotype.Component;

import static com.hw.aggregate.revoke_token.model.RevokeToken.ENTITY_ISSUE_AT;
import static com.hw.aggregate.revoke_token.model.RevokeToken.ENTITY_TARGET_ID;

@Component
public class AdminRevokeTokenSelectQueryBuilder extends SelectQueryBuilder<RevokeToken> {
    {
        mappedSortBy.put(ENTITY_ISSUE_AT, ENTITY_ISSUE_AT);
        supportedWhereField.put("targetId", new SelectFieldLongEqualClause<>(ENTITY_TARGET_ID));
        allowEmptyClause = true;
    }

}
