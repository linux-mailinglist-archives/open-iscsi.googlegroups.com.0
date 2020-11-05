Return-Path: <open-iscsi+bncBAABBGE5SH6QKGQEQP5EIEI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id D92182A86D1
	for <lists+open-iscsi@lfdr.de>; Thu,  5 Nov 2020 20:12:25 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id h65sf1083171oia.14
        for <lists+open-iscsi@lfdr.de>; Thu, 05 Nov 2020 11:12:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604603545; cv=pass;
        d=google.com; s=arc-20160816;
        b=JSMq9EQ8UwtY+04Q9VKOvoO63Xil5s7PugVN9dq9lFC1kEQqyf8TkLG16SqbYOnMce
         FikzHG5Sm2BaKswNk6q/FysbqDHNgJDvnw9x6a0KsJ5IpRSP8jx0paUDCWiFGx+6UY4U
         sF+0kg5NrzRLa/JBlnc2156UkU5GiJbYyz7Il3t10L7thOka6tvbmtd6lAb5Km00Ig83
         o7KZ87Ynb9JE8Bm/28AxH/N0zFffvz20QdiwKmYunYmjt9YqJoiWuGr1wvZP4spG8qDs
         mIGcfDWuMTOotByuu1b43VCzUURjmLBo+Zs7nAVrlHPzx6wjh+VzqeSAR2o9kfxPW3s7
         e3Qw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:sender:dkim-signature;
        bh=dXB4QVfK+4lDfox8ypgN/fRpZJ40ROhe+F1o6T/fAt8=;
        b=aBOB5kRxYcNqnRYfFRbS67LGp6YiPhyvu5S5aHj0CudOhefggnsCGXyK8Evp88BqG7
         tQDt53eUiCc46Qbn59pOQtTyIAqTbkywadlqDK0iGh2OFy9/XGK+x0qOViqnsWyXWXBX
         rR7K4kdinTEwlg8TWPMBwKTdF7D+59Fya5FOE3qiZJ/taKZMQO8H2GM5oFQrjmLTEAiC
         +U8HRi9764wffQSoZlE3aofH1E3c2lhrKNhdALDTvS69OOV+LhmClEDAN1Ke2Mx8HOSF
         rDl5MswwxPMSzBD5OglMvEFK1ax5Enq+8ZQfWiXJXLp77UphosxWs6jz6NtOqFWhYq5d
         66ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dXB4QVfK+4lDfox8ypgN/fRpZJ40ROhe+F1o6T/fAt8=;
        b=lYwFAJwjelwsH7iSlcFN4oqkSZVRKBlqzbFBAaOU1wIc0ncCNYvs30xzyj1wOlN/ix
         ZAj3dEG3Xobrcp7ks1q2dm2Ezpeh24EP+kjGB1KyW4CUJyVelCYf4euIW6/SGR2V9U/h
         cbJbgknH+Eq/CLq4X2NOI1g4OAhG/KmtZpLIBrnOMgrjFLunZswV50/02Ld7I8vgr5s6
         NJ6R/U2t9/Y78Jr3Bdsdg6LKKao9XJ3K1o4uTHoQvnRsZEhepHumlyeMPEoit2eIl9Rd
         7rS3u2xFkrZ4C9del/44Ad5HBc1k2ajjZUmoVfKjVvn2TKmCWNXcJzU/p/b6mOJbHFsH
         FTJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dXB4QVfK+4lDfox8ypgN/fRpZJ40ROhe+F1o6T/fAt8=;
        b=i7jW1nOghr3Pa/2atMGqPvAMkIdlOZexjU2xOxAquva87WPm0Dz1Cf82wYJxLVI2mk
         Lfdh1nMaH/T7ujTdlp4YCLYL2g9bdqX3xKvGOTqYZq9AoYDzMtLOwueGVt7ABr1X+fC/
         CA2J2I4UsBi3G9wGzDTaSOeVvgk8/sWkgizXtVqHtnXgcrULnKi1kwnl01YEXa5tSN3R
         /2CETS6XcMATGt34jXxhfkMJM6iwLBI9W8hfjodcKFW71fRpdDik8AM1qSr1822t1HTE
         P3S0JE3xghfsqrSEwMyQzuSP7w2duH23fGMxiNeDdM9pot/3rf/yGIC3OvIUreJyYGwl
         lMAg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM531iK5fU3sHxpevvatLfq1/3/Kh1fBXCfAZyeVQVysN374hZlVO0
	oc1Bs0XiRHIqcDQ0fQrIHsU=
X-Google-Smtp-Source: ABdhPJxbxGpooya1vOCxg7ccVbEOQ+62ILDbGNUug5RxZVKgp+QIrkytpcbuJ3gKeoiW5zJxBNvpBQ==
X-Received: by 2002:a54:4d8d:: with SMTP id y13mr590715oix.75.1604603544812;
        Thu, 05 Nov 2020 11:12:24 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:1f59:: with SMTP id u25ls694798oth.1.gmail; Thu, 05
 Nov 2020 11:12:24 -0800 (PST)
X-Received: by 2002:a9d:39e1:: with SMTP id y88mr2782708otb.39.1604603544513;
        Thu, 05 Nov 2020 11:12:24 -0800 (PST)
Received: by 2002:a54:4184:0:b029:dd:8465:4abf with SMTP id 4-20020a5441840000b02900dd84654abfmsoiy;
        Wed, 4 Nov 2020 19:00:42 -0800 (PST)
X-Received: by 2002:a17:90a:aa15:: with SMTP id k21mr223845pjq.169.1604545242143;
        Wed, 04 Nov 2020 19:00:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604545242; cv=none;
        d=google.com; s=arc-20160816;
        b=h0abC9kUdLo+VwEvwmB4X4ZXFCi2wxusyPnRLBlCeHDTJ9Ze7T0RIbVmRIshTzODG4
         uGSH2BAA7ifMjRe8kljchM74VK+RHa4YMcD0ixrP42HXQYvTITyQVSKsXRR+OKB9BiR3
         evooXN0HL0GmDPUrIfe2hASBVk5kaeq4YAqTAlgVihE+tq6TG8GKBP7izK/MzxOYVYms
         bwsngpV0B6seWI3laLI1m5rVrrEJH1wa2lHPRkKTBbdOV/TVTfdt/kfS+yfNYWTqBtfF
         ghv9/7l1WZ8VDJdxwUQgzm91xJuZJhbT1perhW4WEJMH9xMchVHqpvxQQlOA7x+YFJIe
         EubA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=y+ZVsfZzNGuOZo0ecQMHhzYQu8N/iJxezOBzKFEc6SM=;
        b=bpqhCdhh5WNqPS7sC4857NHgqYbOfDPMA8MLSvmXLetFp7kwWw5GFTMRVzbrs1qriE
         jc4WbPYBTQYHTv3PiMVSMXFh8r0jMTa+oa555EjxbW/iUgrO5fwqUfZ7hStqCBcmz3nu
         aSJyI0UEiWg/yzYF9HTq+69nQ+Pe7KBICcXFmpXQH+4vOTq92u6KUv3/+blHlr6/HtQv
         vxD++l1ShwY9jQbtQUhTJxOIDKewas9E1A4zQDTraqTe1DHXJhTwui0lwF2kMmAEjtZ8
         mCawoA2eeLlUr8/WvoGgSTk3JzmOOGCTU3GcQHryJphHSC+auNLwO058j3PaJoUux3R3
         ldxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=haowenchao@huawei.com
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id k24si9066pjq.2.2020.11.04.19.00.41
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2020 19:00:42 -0800 (PST)
Received-SPF: pass (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4CRStY5WT8z73Bw;
	Thu,  5 Nov 2020 11:00:05 +0800 (CST)
Received: from huawei.com (10.175.101.6) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Thu, 5 Nov 2020
 10:59:57 +0800
From: Wenchao Hao <haowenchao@huawei.com>
To: <lduncan@suse.com>, <open-iscsi@googlegroups.com>
CC: Wu Bo <wubo40@huawei.com>, <linfeilong@huawei.com>,
	<rose.chen@huawei.com>, Wenchao Hao <haowenchao@huawei.com>
Subject: [PATCH] open-iscsi: Fix memory leak in sysfs_get_str
Date: Thu, 5 Nov 2020 10:59:26 +0800
Message-ID: <20201105025925.29822-1-haowenchao@huawei.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.175.101.6]
X-CFilter-Loop: Reflected
X-Original-Sender: haowenchao@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of haowenchao@huawei.com designates 45.249.212.35 as
 permitted sender) smtp.mailfrom=haowenchao@huawei.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

strlen(sysfs_value) return 0 do not mean sysfs_value
is NULL and this memory should be freed

Signed-off-by: Wenchao Hao <haowenchao@huawei.com>
---
 usr/sysfs.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/usr/sysfs.c b/usr/sysfs.c
index 2488160..8d37c69 100644
--- a/usr/sysfs.c
+++ b/usr/sysfs.c
@@ -574,8 +574,12 @@ int sysfs_get_str(char *id, char *subsys, char *param, char *value,
 
 	value[0] = '\0';
 	sysfs_value = sysfs_get_value(id, subsys, param);
-	if (!sysfs_value || !strlen(sysfs_value))
+	if (!sysfs_value)
+		return EIO;
+	if (!strlen(sysfs_value)) {
+		free(sysfs_value);
 		return EIO;
+	}
 
 	len = strlen(sysfs_value);
 	if (len && (sysfs_value[len - 1] == '\n'))
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20201105025925.29822-1-haowenchao%40huawei.com.
