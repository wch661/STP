package com.mossle.bpm.persistence.manager;

import com.mossle.bpm.persistence.domain.BpmConfOperation;

import com.mossle.core.hibernate.HibernateEntityDao;

import org.springframework.stereotype.Service;

@Service
public class BpmConfOperationManager extends
        HibernateEntityDao<BpmConfOperation> {
}
