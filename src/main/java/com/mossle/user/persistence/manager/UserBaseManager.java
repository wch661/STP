package com.mossle.user.persistence.manager;

import com.mossle.core.hibernate.HibernateEntityDao;

import com.mossle.user.persistence.domain.UserBase;

import org.springframework.stereotype.Service;

@Service
public class UserBaseManager extends HibernateEntityDao<UserBase> {
}
