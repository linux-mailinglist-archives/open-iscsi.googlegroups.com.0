Return-Path: <open-iscsi+bncBCVPTQVVPQIPFBUI64CRUBBIQ5RZ6@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B4D1F6577
	for <lists+open-iscsi@lfdr.de>; Thu, 11 Jun 2020 12:12:03 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id d64sf1299556vkh.16
        for <lists+open-iscsi@lfdr.de>; Thu, 11 Jun 2020 03:12:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591870322; cv=pass;
        d=google.com; s=arc-20160816;
        b=T7gSPuWjuIFP2usrD8SAA5QukwHDykXoJ9h4qtgzEZ/744z6tXrhPP/odoBSDXaPDU
         XUW+AgAIlc8pcfUovvztHy9lXQWYUFCTFQbV10VAMHTZjvrAg2aygeNmsYlmLWgEgJMo
         I4dbU5ZbViNKb+VNIi0eXnb8wypfCyYfnyvvbyyrdNWSZmZ3qnJOFPa8a3Kky3kXyD8A
         CuR8cDzEMA8Awlx4GqmRQBIJIYJhxPGXbkBX/Um8kRZ330lf+zYff/ZSTUyd+qwLH8f8
         hMDTT/IE704OgyqV70R1UsdTljgnOLnVHPKHyVvNCceQIfsgASrRi4EEGhcZ8OXQPanP
         gIKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:subject:cc
         :to:from:mime-version:sender:dkim-signature;
        bh=cxGaLnU/Zi4dvjSmFCGIzj+S0OUsiynSIuRmdAM4jSw=;
        b=THADxSYGchX3RzucBMVif0ReaEWqPBPfzvVPqWeT+ZQNt6C76gUqujSTa5bN6ERVgc
         b4O0ypLYd2uIJ27Upbx78Vy0skZYeUiisoMq8nHRz+bOHFFCrd3PZBtVtUT9SSAA0r+b
         UhbanOFXzxUKJ/POYxmPWc6y9GOVP+M3PLEsfjVeq5UU+QGUkLU1EsFzvPmVNDCGNALd
         Y53A8EGfH/t8REimDxrJiNg32MoKXQusuFjaYbnGL4fi3zXDEdtDaJkit2YnB6I+x2lz
         yTJ2Cltjy3OAUXW1Kv/w0RqgNs9e+nHQ0IsnKnuvAGNgA06rCTdz1SKjkhCr6LfK7BaH
         M5tA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=jiIaxZjQ;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cxGaLnU/Zi4dvjSmFCGIzj+S0OUsiynSIuRmdAM4jSw=;
        b=o2N/hqa1DHMD68Azs0djGCc2ypDL66bTi9msD+8h2wrgyOqmtloKJr/Z8edczeZpCJ
         QJiLJOAU1q9OZyKzAaFKtGXRiFKUjbMIRXzMh9WpVSfhskRjXZVwl+B203FdkdAxstQp
         gLFnevSaIVlslqf4DSs+YH4RhMcmLdhyAjjS7Bo0N6xoCcp5VOvwclyc/0A1a3RnHhqd
         rNWVu6Ch0/Ixu16guUMKTdd4nscdRbBih6fRbnajRP1im8tOC8SP+NANmBxWWvhpq0kK
         XUQr4aKf9nprrOwE7/1VmW1ae5r/euqYqf3AnIwQhvGELCRtPGU6+eh1LZj6V2o+FQhc
         u3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cxGaLnU/Zi4dvjSmFCGIzj+S0OUsiynSIuRmdAM4jSw=;
        b=b5qJZfdsNMWpLuOyY3m1fIu5C5yNsDV8cQwTHaRlSYavzLrkejjl+Rc0P8EdEdVJ1B
         7jKqYI2s+srF227d9a1SMuOmDIBCzTFtlUrY3XtYyqgxPXHxMcRKVSNIZLbsBdQ+Cae9
         Hm8h39MZVB8qT46gnszmdt0SX5ZKO2G0xvyLDzs9MSMeV6a8baQtF3rXyjAMlMlAr0Wa
         VVbh83JXBvifZoQruE2WwN0IY57wYrJ5eY8R3KD96Y4vgABeEBWAURFKl2AgRx0EWjDm
         LfTEqOf9qIpXLYj71GboTIqAEbUl+TgayoCzhHHiU8BYMEhUnexETBoVd355enOVaC5J
         kovQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533yBZ2EGkv3YjgaRFTi9lG44sAATQy5AfXO4xfZIup1seL94p8J
	Flw2Yrr6rUqzFSO33oWXat4=
X-Google-Smtp-Source: ABdhPJyiwq6QLvv+Kx2a2uQrBnuS1JZ86iESJ5NXoLe8MJmyJVmVJV2aXApLC+ra+LTDgY/QEhVQtQ==
X-Received: by 2002:a05:6102:126c:: with SMTP id q12mr5795772vsg.173.1591870322299;
        Thu, 11 Jun 2020 03:12:02 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a67:fc91:: with SMTP id x17ls192704vsp.10.gmail; Thu, 11 Jun
 2020 03:12:02 -0700 (PDT)
X-Received: by 2002:a67:ed16:: with SMTP id l22mr5628514vsp.30.1591870321904;
        Thu, 11 Jun 2020 03:12:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591870321; cv=none;
        d=google.com; s=arc-20160816;
        b=LPx8U4QXk0u7O5C6qYAFYdtcK6KyXR2xSZ1d3fCCPjJ6KDMA698zlQ0nZGwD1fo6Jz
         jWAhAL9tggDbA1YixomQCEOk/yjHFzP8eg01Y1bgRP96hI2AlHogKMKDocEOrpurF2zo
         ttxHVfBw47ozDv6sv4osJVLluVFZa9F1ZlDIGxHoCfrTJFlNYs5jl7uIqj89YQPBkUkL
         HxIMao97q2CJ8PUnao4bpDQ94GjFpnq7FUB/XU5JHJwmnDtoy+8O7FxaWHmD7b2ziFM5
         6a1JZc8UbAE1Un9cfdOeTRyybfhy11lxl5Z3f6HcKAkyS7ICxK0csBP9JOCw9v35MaVV
         kp3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=2QDDI0kD5A5seujqkA0+fH9fCS9E1vDtyTv8AY1OlxM=;
        b=przda3ybL9kyUOfUt1l9xx6fcCT2t9OYmA58mkY9XrLQPR/231xvnFGVUwHWIypifK
         yAUywX/M1czdtDvNkvre+UABYuoOq92azYGunX+RJv6l4obVAA7v2JM1eRcP9qFNS/2X
         pNLNMzOvAoEfdFCAgBzcOfOyf/1DWhrRty8Mp/YYoyjXoUpLjSkeyzbdxybRgFeYRxMJ
         RiQiHyM33O1OHsDavAaQsgEJQWWm8KnKVIzKhUptwKx8ObWq+UzSKrGPU7iEpVXNMd/D
         OYWgb1z01e52OSCxGQe405mniHT7ehm6OFo/94PvQ1XRxFeelc9OR9f8+Kavr6XRfNcC
         u7yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=jiIaxZjQ;
       spf=pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id e10si161782vkp.4.2020.06.11.03.12.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 03:12:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bob.liu@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05BA6r4m013263;
	Thu, 11 Jun 2020 10:12:01 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 31jepp0vhy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jun 2020 10:12:00 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05BA8VL7136609;
	Thu, 11 Jun 2020 10:10:00 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 31gmwuyx23-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 11 Jun 2020 10:10:00 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05BA9xwe018737;
	Thu, 11 Jun 2020 10:09:59 GMT
Received: from localhost.localdomain (/183.246.144.78)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 11 Jun 2020 03:09:55 -0700
From: Bob Liu <bob.liu@oracle.com>
To: linux-kernel@vger.kernel.org
Cc: tj@kernel.org, martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
        open-iscsi@googlegroups.com, lduncan@suse.com,
        michael.christie@oracle.com, Bob Liu <bob.liu@oracle.com>
Subject: [PATCH 1/2] workqueue: don't always set __WQ_ORDERED implicitly
Date: Thu, 11 Jun 2020 18:07:16 +0800
Message-Id: <20200611100717.27506-1-bob.liu@oracle.com>
X-Mailer: git-send-email 2.9.5
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9648 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 spamscore=0 adultscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006110078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9648 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 lowpriorityscore=0 suspectscore=1
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 malwarescore=0 mlxscore=0 cotscore=-2147483648 adultscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006110078
X-Original-Sender: bob.liu@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=jiIaxZjQ;
       spf=pass (google.com: domain of bob.liu@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=bob.liu@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Reply-To: open-iscsi@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

Current code always set 'Unbound && max_active == 1' workqueues to ordered
implicitly, while this may be not an expected behaviour for some use cases.

E.g some scsi and iscsi workqueues(unbound && max_active = 1) want to be bind
to different cpu so as to get better isolation, but their cpumask can't be
changed because WQ_ORDERED is set implicitly.

This patch adds a flag __WQ_ORDERED_DISABLE and also
create_singlethread_workqueue_noorder() to offer an new option.

Signed-off-by: Bob Liu <bob.liu@oracle.com>
---
 include/linux/workqueue.h | 4 ++++
 kernel/workqueue.c        | 4 +++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/include/linux/workqueue.h b/include/linux/workqueue.h
index e48554e..4c86913 100644
--- a/include/linux/workqueue.h
+++ b/include/linux/workqueue.h
@@ -344,6 +344,7 @@ enum {
 	__WQ_ORDERED		= 1 << 17, /* internal: workqueue is ordered */
 	__WQ_LEGACY		= 1 << 18, /* internal: create*_workqueue() */
 	__WQ_ORDERED_EXPLICIT	= 1 << 19, /* internal: alloc_ordered_workqueue() */
+	__WQ_ORDERED_DISABLE	= 1 << 20, /* internal: don't set __WQ_ORDERED implicitly */
 
 	WQ_MAX_ACTIVE		= 512,	  /* I like 512, better ideas? */
 	WQ_MAX_UNBOUND_PER_CPU	= 4,	  /* 4 * #cpus for unbound wq */
@@ -433,6 +434,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
 #define create_singlethread_workqueue(name)				\
 	alloc_ordered_workqueue("%s", __WQ_LEGACY | WQ_MEM_RECLAIM, name)
 
+#define create_singlethread_workqueue_noorder(name)			\
+	alloc_workqueue("%s", WQ_SYSFS | __WQ_LEGACY | WQ_MEM_RECLAIM | \
+			WQ_UNBOUND | __WQ_ORDERED_DISABLE, 1, (name))
 extern void destroy_workqueue(struct workqueue_struct *wq);
 
 struct workqueue_attrs *alloc_workqueue_attrs(void);
diff --git a/kernel/workqueue.c b/kernel/workqueue.c
index 4e01c44..2167013 100644
--- a/kernel/workqueue.c
+++ b/kernel/workqueue.c
@@ -4237,7 +4237,9 @@ struct workqueue_struct *alloc_workqueue(const char *fmt,
 	 * on NUMA.
 	 */
 	if ((flags & WQ_UNBOUND) && max_active == 1)
-		flags |= __WQ_ORDERED;
+		/* the caller may don't want __WQ_ORDERED to be set implicitly. */
+		if (!(flags & __WQ_ORDERED_DISABLE))
+			flags |= __WQ_ORDERED;
 
 	/* see the comment above the definition of WQ_POWER_EFFICIENT */
 	if ((flags & WQ_POWER_EFFICIENT) && wq_power_efficient)
-- 
2.9.5

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20200611100717.27506-1-bob.liu%40oracle.com.
