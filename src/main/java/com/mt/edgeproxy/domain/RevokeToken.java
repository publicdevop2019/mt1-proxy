package com.mt.edgeproxy.domain;

import com.mt.common.audit.Auditable;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
@Data
@Slf4j
@NoArgsConstructor
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class RevokeToken extends Auditable {
    public static final String ENTITY_TARGET_ID = "targetId";
    public static final String ENTITY_ISSUE_AT = "issuedAt";
    @Id
    private Long id;
    @Column(nullable = false)
    private String targetId;
    @Column(nullable = false)
    private Long issuedAt;
}
